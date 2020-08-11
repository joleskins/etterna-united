--Stolen from Til Death but edited

local t = Def.ActorFrame {}

--Numbers
t[#t + 1] =
	LoadFont("_vikive bold 24px") ..
	{
		Name = "currentTime",
		InitCommand = function(self)
			self:diffusealpha(0.2):halign(1):valign(0):xy(1804,50)
		end
	}

--PM
--This is separate because it uses a different font
t[#t + 1] =
  LoadFont("_raleway black 18px") ..
    {
      InitCommand=function(self)
        self:diffusealpha(0.2):halign(1):valign(0):xy(1840,52)
      end,

      OnCommand=function(self)
        local whereAreWe = SCREENMAN:GetTopScreen()
        self:settext("PM")
      end
  }

local translated_time = THEME:GetString("GeneralInfo", "SessionTime")

local function Update(self)
	local hour = Hour()
	local minute = Minute()
	self:GetChild("currentTime"):settextf("%02d:%02d", hour, minute)
end

t.InitCommand = function(self)
	self:SetUpdateFunction(Update)
end
return t
