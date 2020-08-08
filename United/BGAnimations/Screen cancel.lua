local t = 
    Def.ActorFrame {

        Def.Quad {
            InitCommand=function(self)
                self:xy(SCREEN_CENTER_X,SCREEN_CENTER_Y):zoomto(SCREEN_WIDTH,SCREEN_HEIGHT):diffuse(color("#000000")):diffusealpha(0)
            end,
            OnCommand=function(self)
                self:linear(0.75):diffusealpha(1)
            end
        },
        LoadActor ( THEME:GetPathS("","Common Cancel") )..{StartTransitioningCommand=function(self)
			self:play()
		end}
	}

return t