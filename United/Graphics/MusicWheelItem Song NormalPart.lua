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
			local bnpath = nil
			if song then
				bnpath = params.Song:GetBackgroundPath()
				if not bnpath then
					bnpath = THEME:GetPathG("Common", "fallback banner")
				end
				self:LoadBackground(bnpath)
				self:zoomto(120,60)
			end
		end
	};
return t