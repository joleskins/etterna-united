local t = Def.ActorFrame{}

t[#t + 1] =
	Def.Sprite{
		Texture=THEME:GetPathG("","titlebg");
		InitCommand=function(self)
			self:xy(SCREEN_CENTER_X,SCREEN_CENTER_Y):zoomto(1920,1080)
		end
	}
return t