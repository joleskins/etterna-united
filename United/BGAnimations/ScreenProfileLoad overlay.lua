local x =
	Def.ActorFrame {

	LoadFont("Common Normal") ..
		{
			Text = "Loading...",
			InitCommand = function(self)
				self:halign(1):xy(SCREEN_RIGHT-80,SCREEN_BOTTOM-30):diffuse(color("1,1,1,1")):zoom(0.8)
			end,
			OffCommand = function(self)
				self:decelerate(0.15):addy(20):diffusealpha(0)
			end
		},

	LoadActor(THEME:GetPathG("", "loadingspinner")) ..
		{
			Name = "spinner";
			InitCommand = function(self)
				self:diffusealpha(1):xy(SCREEN_RIGHT-50,SCREEN_BOTTOM-30):rotationz(math.random(1,360)):zoom(0.8):spin()
			end,
			OffCommand = function(self)
				self:decelerate(0.15):diffusealpha(0):spin()
			end
		}
}

x[#x + 1] =
	Def.Actor {
	BeginCommand = function(self)
		if SCREENMAN:GetTopScreen():HaveProfileToLoad() then
			self:sleep(1)
		end
		self:queuecommand("Load")
	end,
	LoadCommand = function()
		SCREENMAN:GetTopScreen():Continue()
	end
}

return x
