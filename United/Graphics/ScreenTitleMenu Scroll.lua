local gc = Var("GameCommand")
-- A scroller that can be loaded from elsewhere
-- It is placed into redir files to save space

return Def.ActorFrame {
	LoadActor(THEME:GetPathG("","TitleMenu Active")) ..
		{
			InitCommand = function(self)
				self:zoom(1):halign(0):diffusealpha(0):zoomy(.75)
			end,

			OnCommand = function(self)
				if gc:GetIndex() == 0 then
					self:diffusealpha(.7)
				else
					self:diffusealpha(0)
				end
			end,
			GainFocusCommand = function(self)
				self:diffusealpha(.7)
			end,
			LoseFocusCommand = function(self)
				self:diffusealpha(0)
			end
		},
	LoadActor(THEME:GetPathG("","TitleMenu Inactive")) ..
		{
			InitCommand = function(self)
				self:zoom(1):halign(0):zoomy(.75)
			end,

			OnCommand = function(self)
				if gc:GetIndex() == 0 then
					self:diffusealpha(0)
				else
					self:diffusealpha(.7)
				end
			end,
			GainFocusCommand = function(self)
				self:diffusealpha(0)
			end,
			LoseFocusCommand = function(self)
				self:diffusealpha(.7)
			end
		},
	LoadFont("Common Normal") ..
		{
			InitCommand = function(self)
				self:halign(0):uppercase(true):addx(35)
			end,

			OnCommand = function(self)
				self:settext(THEME:GetString(SCREENMAN:GetTopScreen():GetName(), gc:GetText()))
			end,
			GainFocusCommand = function(self)
				self:zoom(1):diffuse(color("#000000"))
			end,
			LoseFocusCommand = function(self)
				self:zoom(1):diffuse(color("#FFFFFF"))
			end
		}
}
