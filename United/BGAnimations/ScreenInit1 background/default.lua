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
		LoadActor(THEME:GetPathG("","Common splash")) ..
			{
				OnCommand = function(self)
					self:diffusealpha(0):sleep(0.5):linear(0.3):diffusealpha(1):sleep(3.5):linear(0.3):diffusealpha(0)
				end
			}
	}
}

return t
