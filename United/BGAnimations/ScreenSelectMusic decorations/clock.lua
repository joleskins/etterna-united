--Stolen from Til Death but edited slightly

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

--AM/PM
--This is separate because it uses a different font
--I don't know of a way to swap font mid string
t[#t + 1] =
  LoadFont("_raleway black 18px") ..
    {
    	Name = "AMPM",
    	InitCommand=function(self)
        	self:diffusealpha(0.2):halign(1):valign(0):xy(1840,52)
    	end

    	--[[OnCommand=function(self)
        	self:settext("PM")
     	end--]]
  }

local translated_time = THEME:GetString("GeneralInfo", "SessionTime")

local function Update(self)
	local hour = Hour()
	local minute = Minute()
      if Hour() < 12 then
      	self:GetChild("currentTime"):settextf("%2d:%02d", hour, minute)
        self:GetChild("AMPM"):settext("AM")
      elseif Hour() >= 12 then
      	--Need to find a way to show correct hours for AM/PM system (1 instead of 13, 2 instead of 14 etc.)
      	self:GetChild("currentTime"):settextf("%2d:%02d", hour, minute)
      	self:GetChild("AMPM"):settext("PM")
      end
end

t.InitCommand = function(self)
	self:SetUpdateFunction(Update)
end
return t
