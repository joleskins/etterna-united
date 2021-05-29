--NOTE: All coordinates and sizes are based on a 1920x1080 theme grid
--To scale the values back to 640x480(default), multiply them by 0.44444444 (yes you need that many digits)


--Til Death has this so I guess I'll throw it in as well
if IsSMOnlineLoggedIn() then
	CloseConnection()
end

--Define list of song files
titleSongList = {
	"berzerker",	 	-- WATEVA - Ber Zer Ker (Rob Gasser Remix)
	"freefall",			-- Arlow - Freefall
	"humanity",			-- Max Brhon - Humanity
	"imhere",			-- HYLO x Disfigure - I'm Here
	"venus"				-- Michael White - Venus (feat. MYLK)
	}

--Define metadata for list of songs (make sure to keep the same order for both tables)
local metadataList = {
	"WATEVA - Ber Zer Ker (Rob Gasser Remix)",
	"Arlow - Freefall",
	"Max Brhon - Humanity",
	"HYLO x Disfigure - I'm Here",
	"Michael White - Venus (feat. MYLK)"
}

--Define BPMs of songs (will be used later)
titleSongBPMs = {
	174,	-- WATEVA - Ber Zer Ker (Rob Gasser Remix)
	174,	-- Arlow - Freefall
	110,	-- Max Brhon - Humanity
	160,	-- HYLO x Disfigure - I'm Here
	128		-- Michael White - Venus (feat. MYLK)
}

titleSongTotalBeats = {
	--Not double checked yet. Likely a bit off
	190,	-- WATEVA - Ber Zer Ker (Rob Gasser Remix)
	272,	-- Arlow - Freefall
	160,	-- Max Brhon - Humanity
	192,	-- HYLO x Disfigure - I'm Here
	192		-- Michael White - Venus (feat. MYLK)
}

--titleSongBeatCount variable used later for counting beats
titleSongBeatCount = 0

--Set random song in the list from 1 to the length of titleSongList{}
--This is separate from the song/metadata functions so the song and metadata can be in sync
--Global value so other loaded files can use it
songDiceRoll = math.random(1,#titleSongList)
--songDiceRoll = titleSongList[1]

function loadRandomTitleSong()
	local name = "Titlesongs/" .. titleSongList[songDiceRoll]

	--Stepmania has built in sounds which rely on filenames
	--This simply utilises that system and edits a .redir file to a random song from titleSongList{}
	local f = RageFileUtil.CreateRageFile()
	if f:Open("/Themes/" .. THEME:GetCurThemeName() .. "/Sounds/ScreenTitleMenu music.redir", 2) then
    	f:Write(name)
    f:destroy()
    end
end

function getRandomTitleSongMetadata()
	return metadataList[songDiceRoll]
end

local t =
	Def.ActorFrame {
	InitCommand=function()
		loadRandomTitleSong()
		getRandomTitleSongMetadata()
		--The random title song depends on metrics being reloaded since it rewrites a .redir file
		--I'm not sure if reloading metrics on every titlemenu entry is bad but it works
		THEME:ReloadMetrics()
	end,
	OnCommand=function(self)
		--I don't know why this is here but it is
		SCREENMAN:GetTopScreen()
	end
}

--Get song info string length (used for quad below)
local songStringLength = string.len(getRandomTitleSongMetadata())

t[#t + 1] =
	--Metadata background
	Def.Quad {
		InitCommand=function(self)
			self:diffuse(color("#000000"))
			self:diffusealpha(.5)
			self:valign(0)
			self:halign(1)
			self:fadeleft(.25)
			self:xy(SCREEN_RIGHT,0)

			--Make size depend on string length
			--I try not to do this unless the string lengths can be accounted for
			--For example, I wouldn't do this in song select or profile info where the length can be whatever
			self:zoomto(songStringLength * 12 , 34)
		end
}

t[#t + 1] =
	--Metadata text
	LoadFont("_raleway semibold 16px") ..
	{
		InitCommand=function(self)
			self:zoom(1):xy(SCREEN_RIGHT-10,10):halign(1):valign(0)
		end,
		OnCommand=function(self)
			--Grab text from metadata function
			self:settext(getRandomTitleSongMetadata())
		end
}

--Load background animations based on songDiceRoll
local titleSongBackgroundAnimation = titleSongList[songDiceRoll]
if titleSongBackgroundAnimation ~= nil then
	t[#t+1] = LoadActor("ScreenTitleMenu Animations/" .. titleSongBackgroundAnimation)
end

return t