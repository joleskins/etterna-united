local t = Def.ActorFrame {}

--Difficulty display
t[#t + 1] = Def.ActorFrame {
	InitCommand=function(self)
		self:xy(75,455)
	end,

	--Background
	Def.Quad{
		InitCommand=function(self)
			self:halign(0):valign(0):xy(0,0):zoomto(500,127):diffuse(color("#000000")):diffusealpha(0.4)

		end
	},
	--List
	Def.ActorFrame{
		Name = "StepsDisplay",
	InitCommand = function(self)
		self:xy(16,19):valign(0):halign(0):diffusealpha(0.2)
	end,
	OffCommand = function(self)
		self:visible(true)
	end,
	OnCommand = function(self)
		self:visible(true)
	end,
	CurrentSongChangedMessageCommand = function(self, song)
		local song = song.ptr
		if song then 
			thesteps = song:GetChartsMatchingFilter()
			self:playcommand("On")
			self:playcommand("UpdateStepsRows")
		else 
			self:playcommand("Off")
		end
	end,
	},

--StepsDisplay placeholders
--[[--Easy(selected)
t[#t + 1] =
  Def.Quad {
  Name="DiffHighlightEasy";
  InitCommand = function(self)
	self:xy(91,474):zoomto(111,25):halign(0):valign(0):diffuse(color("#a435c4")):diffusealpha(1)
  end
}
t[#t + 1] =
  LoadFont("_raleway extrabold 16px") ..
	{
	  InitCommand=function(self)
		self:uppercase(true):diffusealpha(1):halign(0):valign(0):xy(126,481)
	  end,
	  OnCommand=function(self)
		self:settext("EASY")
	  end
  }

--Easy(locked)
  Def.Quad {
  Name="DiffFrameTopNormal";
  InitCommand = function(self)
	self:xy(16,19):zoomto(111,2):halign(0):valign(0):diffusealpha(0.2)
  end
  },
  Def.Quad {
  Name="DiffFrameRightNormal";
  InitCommand = function(self)
	self:xy(127,21):zoomto(2,21):halign(1):valign(0):diffusealpha(0.2)
  end
  },
  Def.Quad {
  Name="DiffFrameLeftNormal";
  InitCommand = function(self)
	self:xy(16,21):zoomto(2,21):halign(0):valign(0):diffusealpha(0.2)
  end
  },
  Def.Quad {
  Name="DiffFrameBottomNormal";
  InitCommand = function(self)
	self:xy(16,42):zoomto(111,2):halign(0):valign(0):diffusealpha(0.2)
  end
  },
  LoadFont("_raleway extrabold 16px") ..
	{
	  InitCommand=function(self)
		self:uppercase(true):diffusealpha(1):halign(0):valign(0):xy(51-2,26):diffusealpha(0.2)
	  end,
	  OnCommand=function(self)
		self:settext("EASY")
	  end
  },
--Normal(selected)
t[#t + 1] =
  Def.Quad {
  Name="DiffHighlightNormal";
  InitCommand = function(self)
	self:xy(210,474):zoomto(111,25):halign(0):valign(0):diffuse(color("#a435c4")):diffusealpha(1)
  end
}
t[#t + 1] =
  LoadFont("_raleway extrabold 16px") ..
	{
	  InitCommand=function(self)
		self:uppercase(true):diffusealpha(1):halign(0):valign(0):xy(231,481)
	  end,
	  OnCommand=function(self)
		self:settext("NORMAL")
	  end
  }

--Normal(locked)
  Def.Quad {
  Name="DiffFrameTopNormal";
  InitCommand = function(self)
	self:xy(135,19):zoomto(111,2):halign(0):valign(0):diffusealpha(0.2)
  end
  },
  Def.Quad {
  Name="DiffFrameRightNormal";
  InitCommand = function(self)
	self:xy(246,21):zoomto(2,21):halign(1):valign(0):diffusealpha(0.2)
  end
  },
  Def.Quad {
  Name="DiffFrameLeftNormal";
  InitCommand = function(self)
	self:xy(135,21):zoomto(2,21):halign(0):valign(0):diffusealpha(0.2)
  end
  },
  Def.Quad {
  Name="DiffFrameBottomNormal";
  InitCommand = function(self)
	self:xy(135,42):zoomto(111,2):halign(0):valign(0):diffusealpha(0.2)
  end
  },
  LoadFont("_raleway extrabold 16px") ..
	{
	  InitCommand=function(self)
		self:uppercase(true):diffusealpha(1):halign(0):valign(0):xy(156,26):diffusealpha(0.2)
	  end,
	  OnCommand=function(self)
		self:settext("NORMAL")
	  end
  },

--Hard(selected)
t[#t + 1] =
  Def.Quad {
  Name="DiffHighlightHard";
  InitCommand = function(self)
	self:xy(329,474):zoomto(111,25):halign(0):valign(0):diffuse(color("#a435c4")):diffusealpha(1)
  end
}
t[#t + 1] =
  LoadFont("_raleway extrabold 16px") ..
	{
	  InitCommand=function(self)
		self:uppercase(true):diffusealpha(1):halign(0):valign(0):xy(363,481)
	  end,
	  OnCommand=function(self)
		self:settext("HARD")
	  end
  }

--Hard(not selected)
  Def.Quad {
  Name="DiffFrameTopHard";
  InitCommand = function(self)
	self:xy(254,19):zoomto(111,2):halign(0):valign(0):diffuse(color("#a435c4")):diffusealpha(1)
  end
  },
  Def.Quad {
  Name="DiffFrameRightHard";
  InitCommand = function(self)
	self:xy(365,21):zoomto(2,21):halign(1):valign(0):diffuse(color("#a435c4")):diffusealpha(1)
  end
  },
  Def.Quad {
  Name="DiffFrameLeftHard";
  InitCommand = function(self)
	self:xy(254,21):zoomto(2,21):halign(0):valign(0):diffuse(color("#a435c4")):diffusealpha(1)
  end
  },
  Def.Quad {
  Name="DiffFrameBottomHard";
  InitCommand = function(self)
	self:xy(254,42):zoomto(111,2):halign(0):valign(0):diffuse(color("#a435c4")):diffusealpha(1)
  end
  },
  LoadFont("_raleway extrabold 16px") ..
	{
	  InitCommand=function(self)
		self:uppercase(true):diffusealpha(1):halign(0):valign(0):xy(288,26):diffuse(color("#a435c4"))
	  end,
	  OnCommand=function(self)
		self:settext("HARD")
	  end
  },

--Challenge(selected)
  Def.Quad {
  Name="DiffHighlightChallenge";
  InitCommand = function(self)
	self:xy(373,19):zoomto(111,25):halign(0):valign(0):diffuse(color("#a435c4")):diffusealpha(1)
  end
  },
  LoadFont("_raleway extrabold 16px") ..
	{
	  InitCommand=function(self)
		self:uppercase(true):diffusealpha(1):halign(0):valign(0):xy(380,26)
	  end,
	  OnCommand=function(self)
		self:settext("CHALLENGE")
	  end
  },--]]

--MSD Display. Adapted from Til Death
	CurrentRateChangedMessageCommand = function(self)
	self:queuecommand("GetMSD")
	end,

	LoadFont("_vikive bold 48px") ..
		{
		  Name = "MSD Value",
		  InitCommand = function(self)
			self:xy(484-9,44+19):halign(1):valign(0):diffusealpha(0):zoom(1)
		  end,
		  GetMSDCommand = function(self)
		  local song = GAMESTATE:GetCurrentSong()
		  local steps = GAMESTATE:GetCurrentSteps(PLAYER_1)
			if song then
			  if steps:GetStepsType() == "StepsType_Dance_Single" then
				local meter = steps:GetMSD(getCurRateValue(), 1)
				self:settextf("%05.2f", meter):diffusealpha(1)
				self:diffuse(byMSD(meter)):diffusealpha(1)
			  else
				self:settextf("%5.2f", steps:GetMeter()):diffusealpha(1)
				self:diffuse(byDifficulty(steps:GetDifficulty())):diffusealpha(1)
			  end
			else
			  self:settext("")
			end
		  end,
		  CurrentRateChangedMessageCommand = function(self)
		  self:queuecommand("GetMSD")
		  end,
		  CurrentStepsP1ChangedMessageCommand = function(self)
		  self:queuecommand("GetMSD")
		  end
	},

--MSD text 
  LoadFont("_raleway extrabold 12px") ..
	{
	  InitCommand=function(self)
		self:uppercase(true):diffusealpha(0.3):halign(1):valign(0):xy(484,104)
	  end,
	  OnCommand=function(self)
		self:settext("MSD")
	  end
  },

--Patterns(Skillsets title)
  LoadFont("_raleway extrabold 16px") ..
	{
	  InitCommand=function(self)
		self:uppercase(false):diffusealpha(0.3):halign(0):valign(0):xy(16,64-2)
	  end,
	  OnCommand=function(self)
		self:settext("Patterns")
	  end
  },

--Patterns(Skillsets title)
  LoadFont("_raleway semibold 16px") ..
	{
	  InitCommand=function(self)
		self:uppercase(false):diffusealpha(1):halign(0):valign(0):xy(16,88-2)
	  end,
	  OnCommand=function(self)
		self:settext("Technical  Jumpstream  Stamina")
	  end
  },
}

local stepsdisplayx = 75 + 16
local stepsdisplayy = 455 + 25
local thesteps

local itemwidth = 12
local rowwidth = 111
local rowheight = 25
local cursorwidth = 111
local cursorheight = 25

local numshown = 4
local currentindex = 1
local displayindexoffset = 0

local function stepsRows(i)
	local o = Def.ActorFrame {
		InitCommand = function(self)
			self:x(stepsdisplayx + itemwidth * (i - 1))
			self:y(stepsdisplayy)
		end,
		Def.Quad {
			InitCommand = function(self)
				self:zoomto(itemwidth,rowheight):halign(0)
			end,
			UpdateStepsRowsCommand = function(self)
				local steps = thesteps[i + displayindexoffset]
				if steps then 
					self:visible(false)
					local diff = steps:GetDifficulty()
					--self:diffuse(byDifficulty(diff))
					self:diffusealpha(0.1)
				else 
					self:visible(false)
				end
			end,
		},
		Def.Quad {
			InitCommand = function(self)
				self:zoomto(111, rowheight):halign(0):diffusealpha(0.1)	
			end,
			UpdateStepsRowsCommand = function(self)
				local steps = thesteps[i + displayindexoffset]
				if steps then 
					self:visible(false)
					local diff = steps:GetDifficulty()
					--self:diffuse(byDifficulty(diff))
					self:diffusealpha(0.1)					
				else 
					self:visible(false)
					self:diffusealpha(0.1)	
				end
			end
		},
		LoadFont("Common Large") .. {
			InitCommand = function(self)
				self:x(12):zoom(0.2):settext(""):halign(0.5):valign(0)
			end,
			UpdateStepsRowsCommand = function(self)
				local steps = thesteps[i + displayindexoffset]
				if steps then
				local diff = steps:GetDifficulty()
					self:settext("DIFFICULTY")
				else
					self:settext("DIFFICULTY")
				end
			end
		},
		LoadFont("Common Large") .. {
			InitCommand = function(self)
				self:x(12):addy(-9):zoom(1):settext(""):halign(0.5):valign(0)
			end,
			UpdateStepsRowsCommand = function(self)
				local steps = thesteps[i + displayindexoffset]
				if steps then
				local st = THEME:GetString("StepsDisplay StepsType", ToEnumShortString(steps:GetStepsType()))
					self:settext("DIFFICULTY")
				else
					self:settext("DIFFICULTY")
				end
			end
		}
	}

	return o
end

local sdr =
	Def.ActorFrame {
	Name = "StepsRows"
}

for i = 1, numshown do
	sdr[#sdr + 1] = stepsRows(i)
end
t[#t + 1] = sdr

local center = math.ceil(numshown / 2)
-- cursor goes on top
t[#t + 1] = Def.Quad {
	InitCommand = function(self)
		self:x(itemwidth + stepsdisplayx):zoomto(cursorwidth, cursorheight):halign(1):valign(0.5):diffusealpha(0.1)
		self:y(stepsdisplayy)
	end,
	CurrentStepsChangedMessageCommand = function(self, steps)
		for i = 1, 20 do
			if thesteps and thesteps[i] and thesteps[i] == steps.ptr then
				currentindex = i
				break
			end
		end

		if currentindex <= center then
			displayindexoffset = 0
		elseif #thesteps - displayindexoffset > numshown then
			displayindexoffset = currentindex - center
			currentindex = center
		else
			currentindex = currentindex - displayindexoffset
		end

		if #thesteps > numshown and #thesteps - displayindexoffset < numshown then
			displayindexoffset = #thesteps - numshown 
		end

		self:y(stepsdisplayy)
		self:x(stepsdisplayx + itemwidth * (i - 1))
		self:GetParent():GetChild("StepsRows"):queuecommand("UpdateStepsRows")
	end
}


return t