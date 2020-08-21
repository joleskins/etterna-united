local t = Def.ActorFrame {}
t[#t+1] = Def.Sprite {
	InitCommand = function(self)
		self:fadeleft(0)
		self:halign(1)
		self:zoomto(120,60)
		self:x(-10)
		self:y(13)
		self:diffusealpha(1)
		end,
		SetMessageCommand = function(self,params)
			local song = params.Song
			local focus = params.HasFocus
			local bnpath = nil

			if song then
				bnpath = params.Song:GetBannerPath()
				if not bnpath then
					bnpath = THEME:GetPathG("Common", "fallback wheelbanner")
				end
				self:Load(bnpath)
				self:zoomto(120,60)
			end

			if focus then
				self:diffusealpha(1)
			else
				self:diffusealpha(0.4)
			end
		end
	};
t[#t+1] = Def.Sprite {
	Texture=THEME:GetPathG("", "WheelItem/wheel highlight 1x6");
	Frames=Sprite.LinearFrames(6,99999999);
	InitCommand = function(self)
		self:loop(0)
		self:fadeleft(0)
		self:halign(0)
		self:zoom(1)
		self:x(-10)
		self:y(13)
		self:diffusealpha(1)
		self:setstate(math.random(0,5))
		end,
		SetMessageCommand = function(self,params)
			local focus2 = params.HasFocus

			if focus2 then
				self:diffusealpha(1)
			else
				self:diffusealpha(0)
			end
		end
	};
return t