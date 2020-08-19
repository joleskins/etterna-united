local t = Def.ActorFrame {}
t[#t+1] = Def.Quad {
	InitCommand = function(self)
		self:fadeleft(0)
		self:halign(1)
		self:zoomto(5,60)
		self:x(-130)
		self:y(13)
		self:diffusealpha(1)
		self:diffuse(color("#4d4d4d"))
		end,
		SetGradeCommand = function(self,params)
			local song = params.Song
			local focus = params.HasFocus
			local grade = params.Grade
			local wheel = SCREENMAN:GetTopScreen():GetMusicWheel()

				if grade == "Grade_Tier01" then
--[[					ms.ok("AAAA")--]]
					self:diffuse(color("#25b1b3"))
				elseif grade == "Grade_Tier02" then
--[[					ms.ok("AAA")--]]
					self:diffuse(color("#e9ba00"))
				elseif grade == "Grade_Tier03" then
--[[					ms.ok("AA")--]]
					self:diffuse(color("#1c8843"))
				elseif grade == "Grade_Tier04" then
--[[					ms.ok("A")--]]
					self:diffuse(color("#993742"))
				else
--[[					ms.ok("No score")--]]
					self:diffuse(color("#4d4d4d"))
				end

			if focus then
				self:diffusealpha(1)
			else
				self:diffusealpha(0.4)
			end
		end
	};


return t