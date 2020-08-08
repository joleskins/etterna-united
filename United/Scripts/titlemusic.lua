--[[--[[--[[--[[local songList = {

	{"chasingmidnight","Moog - Chasing Midnight (feat. Erin Renee)"},
	{"everythingbang","Moog - Everything Bang"},
	{"forcedinduction","Moog - Forced Induction"},
	{"horizons","Moog - Horizons (feat. Erin Renee)"},
	{"iwillfindyou","Moog - I Will Find You (feat. ALPHAMAMA)"},
	{"liftmeup","Moog - Lift Me Up (feat. 7skies)"},
	{"transformer","Moog - Transformer"}
}

function loadRandomTitleSong()

	--This is probably really stupid
	local diceroll = math.random(1,7)
	local songFileIndex = songList[diceroll][1]
	local songMetaIndex = songList[diceroll][2]

	local audioName = songList[songFileIndex]
	local audioMetadata = songList[songMetaIndex]

	local f = RageFileUtil.CreateRageFile()
	if f:Open("/Themes/" .. THEME:GetCurThemeName() .. "/Sounds/randomtitlesong.redir", 2) then
    	f:Write(audioName)
    f:destroy()
    end

    local m = RageFileUtil.CreateRageFile()
	if m:Open("/Themes/" .. THEME:GetCurThemeName() .. "/Sounds/titlemetadata.redir", 2) then
    	m:Write(audioMetadata)
    m:destroy()
    end
end--]]

--I could not make this script work with the following tables combined
--If you know how to do this, let me know on discord (@jole#9182)

--Define list of songs
--[[local songList = {
	"chasingmidnight", -- Moog - Chasing Midnight (feat. Erin Renee)
	"everythingbang", -- Moog - Everything Bang
	"forcedinduction", -- Moog - Forced Induction
	"horizons", -- Moog - Horizons feat. Erin Renee
	"iwillfindyou", -- Moog - I Will Find You (feat. ALPHAMAMA)
	"liftmeup", -- Moog - Lift Me Up (feat. 7skies)
	"transformer" -- Moog - Transformer
	}--]]

--metadataList moved to 'ScreenTitleMenu overlay.lua' until I figure out how to make this work through a script

--Define metadata for list of songs (make sure to keep the same order for both tables)
--[[local metadataList = {
	"Moog - Chasing Midnight (feat. Erin Renee)",
	"Moog - Everything Bang",
	"Moog - Forced Induction",
	"Moog - Horizons feat. Erin Renee",
	"Moog - I Will Find You (feat. ALPHAMAMA)",
	"Moog - Lift Me Up (feat. 7skies)",
	"Moog - Transformer"
}--]]

--Set random song in the list from 1 to the length of songList{}
--This is separate from loadRandomTitleSong() (and a global) so the song and metadata can be in sync
--local songDiceRoll = math.random(1,#songList)

--[[function setRandomTitleSongValue()
	local songDiceRoll = math.random(1,#songList)

	local fn = RageFileUtil.CreateRageFile(therandomnumber)
	if f:Open("/Themes/" .. THEME:GetCurThemeName() .. "/Sounds/cachedTitleSongNum.redir", 2) then
		f:Write(songDiceRoll)
    f:destroy()
	end
end
--]]
--[[function
	getRandomTitleSongDiceRoll()
	return getRandomTitleSongDiceRoll()
end--]]

--[[function loadRandomTitleSong()
	local name = "Titlesongs/" .. songList[tonumber(THEME:GetMetric("ScreenTitleMenu","TitleScreenRandomSongDiceRollCommand"))]

	local f = RageFileUtil.CreateRageFile()
	if f:Open("/Themes/" .. THEME:GetCurThemeName() .. "/Sounds/ScreenTitleMenu music.redir", 2) then
    	f:Write(name)
    f:destroy()
    end
end--]]

--[[--What a name
function getRandomTitleSongMetadata()
	return metadataList[THEME:GetMetric("ScreenTitleMenu","TitleScreenRandomSongDiceRollCommand"))]
end--]]--]]--]]--]]