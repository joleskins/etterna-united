local t = Def.ActorFrame {}

t[#t + 1] =
	Def.ActorFrame {
	InitCommand = function(self)
		self:Center()
	end,
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
	},
	Def.ActorFrame {
		LoadFont("Common Normal") ..
			{
				Text = "Soundtrack brought to you by",
				InitCommand = function(self)
					self:y(-20):zoom(1):diffusealpha(0)
				end,
				OnCommand = function(self)
					self:diffuse(color("1,1,1,1")):linear(0.3):diffusealpha(1)
				end
			},
		LoadActor(THEME:GetPathG("","nocopyrightsounds")) ..
			{
				OnCommand = function(self)
					self:addy(75):diffusealpha(0):sleep(1):linear(0.3):diffusealpha(1):sleep(3.5):linear(0.3):diffusealpha(0)
				end
			}
	}
}

return t
