local t = Def.ActorFrame{}

t[#t+1] = Def.Sprite {
	Texture=THEME:GetPathG("", "WheelItem/wheel highlight 1x7");
	Frames=Sprite.LinearFrames(7,99999999);
	InitCommand = function(self)
		self:fadeleft(0)
		self:valign(0)
		self:halign(0)
		self:zoom(1)
		self:x(765)
		self:y(552)
		self:diffusealpha(1)
		self:setstate(math.random(0,6))
		end,
		SetMessageCommand = function(self,params)
			local song = params.Song
			local focus2 = params.HasFocus
			local highlightpath = nil
				self:zoom(1)
				self:diffusealpha(1)
				self:setstate(math.random(0,6))
			end
};

return t