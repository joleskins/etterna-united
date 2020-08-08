local x =
	Def.ActorFrame {

	LoadFont("Common Normal") ..
		{
			Text = "Saving...",
			InitCommand = function(self)
				self:halign(1):xy(SCREEN_RIGHT-60,SCREEN_BOTTOM-30):diffuse(color("1,1,1,1")):zoom(0.5)
			end,
			OffCommand = function(self)
				self:decelerate(0.15):addy(10):diffusealpha(0)
			end
		},

	LoadActor(THEME:GetPathG("", "loadingspinner")) ..
		{
			Name = "spinner";
			InitCommand = function(self)
				self:diffusealpha(1):xy(SCREEN_RIGHT-40,SCREEN_BOTTOM-30):rotationz(math.random(1,360)):zoom(0.5):spin()
			end,
			OffCommand = function(self)
				self:decelerate(0.15):diffusealpha(0):spin()
			end
		}
}

x[#x + 1] =
	Def.Actor {
	BeginCommand = function(self)
		if SCREENMAN:GetTopScreen():HaveProfileToSave() then
			self:sleep(1)
		end
		self:queuecommand("Load")
	end,
	LoadCommand = function()
		SCREENMAN:GetTopScreen():Continue()
	end
}

return x
