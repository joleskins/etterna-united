local t = Def.ActorFrame{}

t[#t + 1] =
	Def.Sprite{
		Texture=THEME:GetPathG("","titleblurred");
		InitCommand=function(self)
			self:xy(SCREEN_CENTER_X,SCREEN_CENTER_Y):zoomto(1920,1080)
		end
	}
t[#t + 1] =
	LoadFont("_raleway semibold 16px") ..
		{
			InitCommand=function(self)
				self:diffusealpha(0.15):halign(0.5):xy(SCREEN_CENTER_X,SCREEN_BOTTOM-50)
			end,

			OnCommand=function(self)
				self:settext("the background is a placeholder")
				self:bob()
				self:effectmagnitude(60,0,0)
			end
	}

--Discord integration
GAMESTATE:UpdateDiscordPresence("player name here","Construction site","Options",0)
return t