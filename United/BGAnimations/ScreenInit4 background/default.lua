local t = Def.ActorFrame {}

t[#t + 1] =
	Def.ActorFrame {
	InitCommand = function(self)
		self:Center()
	end,
	Def.Quad {
		InitCommand = function(self)
			self:scaletoclipped(SCREEN_WIDTH, SCREEN_HEIGHT)
		end,
		OnCommand = function(self)
			self:diffuse(color("0,0,0,1")):diffusetopedge(color("0.1,0.1,0.1,1"))
		end
	}
}
t[#t + 1] =
	Def.ActorFrame {
	InitCommand = function(self)
		self:Center()
	end,
	Def.ActorFrame {
		Def.Quad {
			InitCommand = function(self)
				self:FullScreen():diffusealpha(1):xy(0,0):diffuse(color("#000000"))
			end
		},
		LoadActor(THEME:GetPathG("","titlebg")) ..
			{
				OnCommand = function(self)
					self:zoom(0):diffusealpha(1):accelerate(1):diffusealpha(1):addrotationz(1485):zoomto(1920,1080):decelerate(0.3):addrotationz(-45)
				end
			}
	},
	Def.ActorFrame {
		OnCommand = function(self)
			self:halign(0.5):valign(0.5)
		end,
		LoadFont("Common Normal") ..
			{
				Text = "placeholders wooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo",
				InitCommand = function(self)
					self:y(300):zoom(1):addx(2000)
				end,
				OnCommand = function(self)
					self:diffuse(color("1,1,1,0.3")):sleep(1.5):decelerate(4):addx(-4000)
				end
			},
		LoadFont("Common Normal") ..
			{
				Text = "oh yeah woo yeah oh yeah woo yeah woo yeah oh yeah oh woo woo yeah woo yeah",
				OnCommand = function(self)
					self:addx(2000):y(500):diffuse(color("1,1,1,0.3")):zoom(1):sleep(1.5):decelerate(5):addx(-4000)
				end
			},
		LoadFont("Common Normal") ..
			{
				Text = "Created by everybody",
				InitCommand = function(self)
					self:y(-300):zoom(1)
				end,
				OnCommand = function(self)
					self:addx(2000):diffuse(color("1,1,1,0.3")):zoom(1):sleep(1.5):decelerate(3):addx(-4000)
				end
			}
	}
}

return t
