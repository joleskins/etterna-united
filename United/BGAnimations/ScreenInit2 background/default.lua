local t = Def.ActorFrame {}

t[#t + 1] =
	Def.ActorFrame {
	InitCommand = function(self)
		self:Center()
	end
}
t[#t + 1] =
	Def.ActorFrame {
	InitCommand = function(self)
		self:Center()
	end,
	Def.ActorFrame {
		Def.Quad {
		InitCommand = function(self)
			self:FullScreen():diffusealpha(1):diffuse(color("0,0,0,1"))
		end
		},
		LoadFont("Common Normal") ..
			{
				Text = "United uses property and layouts from the following games",
				InitCommand = function(self)
					self:y(-75):zoom(1)
				end,
				OnCommand = function(self)
					self:diffuse(color("1,1,1,1"))
				end
			},
		--[[LoadFont("Common Normal") ..
			{
				Text = "Beatmania IIDX, Clone Hero, DJMax Respect V, Etterna, osu!, and Quaver",
				InitCommand = function(self)
					self:y(48):zoom(1)
				end,
				OnCommand = function(self)
					self:diffuse(color("1,1,1,1"))
				end
			},--]]
		LoadActor(THEME:GetPathG("","game iidx")) ..
			{
				OnCommand = function(self)
					self:halign(0.5):zoom(1):addy(0):addx(-350):diffusealpha(0):sleep(1.5):linear(0.3):diffusealpha(1):sleep(3):linear(0.3):diffusealpha(0)
				end
			},
		LoadFont("Common Normal") ..
			{
				Text = "BEATMANIA IIDX",
				OnCommand = function(self)
					self:halign(0.5):zoom(0.75):addy(0):addx(-250):diffusealpha(0):sleep(1.5):linear(0.3):diffusealpha(1):sleep(3):linear(0.3):diffusealpha(0)
				end
			},

		LoadActor(THEME:GetPathG("","game ch")) ..
			{
				OnCommand = function(self)
					self:halign(0.5):zoom(1):addy(0):addx(-75):diffusealpha(0):sleep(1.75):linear(0.3):diffusealpha(1):sleep(2.5):linear(0.3):diffusealpha(0)
				end
			},
		LoadFont("Common Normal") ..
			{
				Text = "Clone Hero",
				OnCommand = function(self)
					self:halign(0.5):zoom(0.75):addy(0):addx(0):diffusealpha(0):sleep(1.75):linear(0.3):diffusealpha(1):sleep(2.5):linear(0.3):diffusealpha(0)
				end
			},
				
		LoadActor(THEME:GetPathG("","game djmax")) ..
			{
				OnCommand = function(self)
					self:halign(0.5):zoom(1):addy(0):addx(150):diffusealpha(0):sleep(2):linear(0.3):diffusealpha(1):sleep(2):linear(0.3):diffusealpha(0)
				end
			},
		LoadFont("Common Normal") ..
			{
				Text = "DJMax Respect V",
				OnCommand = function(self)
					self:halign(0.5):zoom(0.75):addy(0):addx(250):diffusealpha(0):sleep(2):linear(0.3):diffusealpha(1):sleep(2):linear(0.3):diffusealpha(0)
				end
			},
				
		LoadActor(THEME:GetPathG("","game etterna")) ..
			{
				OnCommand = function(self)
					self:halign(0.5):zoom(1):addy(90):addx(-325):diffusealpha(0):sleep(2.25):linear(0.3):diffusealpha(1):sleep(1.5):linear(0.3):diffusealpha(0)
				end
			},
		LoadFont("Common Normal") ..
			{
				Text = "Etterna",
				OnCommand = function(self)
					self:halign(0.5):zoom(0.75):addy(90):addx(-250):diffusealpha(0):sleep(2.25):linear(0.3):diffusealpha(1):sleep(1.5):linear(0.3):diffusealpha(0)
				end
			},
				
		LoadActor(THEME:GetPathG("","game osu")) ..
			{
				OnCommand = function(self)
					self:halign(0.5):zoom(1):addy(90):addx(-50):diffusealpha(0):sleep(2.5):linear(0.3):diffusealpha(1):sleep(1):linear(0.3):diffusealpha(0)
				end
			},
		LoadFont("Common Normal") ..
			{
				Text = "osu!",
				OnCommand = function(self)
					self:halign(0.5):zoom(0.75):addy(90):addx(0):diffusealpha(0):sleep(2.5):linear(0.3):diffusealpha(1):sleep(1):linear(0.3):diffusealpha(0)
				end
			},
			
		LoadActor(THEME:GetPathG("","game quaver")) ..
			{
				OnCommand = function(self)
					self:halign(0.5):zoom(1):addy(90):addx(175):diffusealpha(0):sleep(2.75):linear(0.3):diffusealpha(1):sleep(0.5):linear(0.3):diffusealpha(0)
				end
			},
		LoadFont("Common Normal") ..
			{
				Text = "Quaver",
				OnCommand = function(self)
					self:halign(0.5):zoom(0.75):addy(90):addx(250):diffusealpha(0):sleep(2.75):linear(0.3):diffusealpha(1):sleep(0.5):linear(0.3):diffusealpha(0)
				end
			}
	}
}

return t
