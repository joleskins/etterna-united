local t = Def.ActorFrame {}
--Quad(behind lamp glow)
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
		SetGradeCommand = function(self, params)
		local focus = params.HasFocus
		local grade = params.Grade

--Look, I tried to do range comparisons instead of checking for each grade
--but it just didn't work. I work with limited knowledge
				if grade == "Grade_Tier01" or grade == "Grade_Tier02" or grade == "Grade_Tier03" or grade == "Grade_Tier04" then 
					--AAAA
					self:diffuse(color("#25b1b3"))
				elseif grade == "Grade_Tier05" or grade == "Grade_Tier06" or grade == "Grade_Tier07" then 
					---AAA
					self:diffuse(color("#e9ba00"))
				elseif grade == "Grade_Tier08" or grade == "Grade_Tier09" or grade == "Grade_Tier10" then
					---AA
					self:diffuse(color("#1c8843"))
				elseif grade == "Grade_Tier11" or grade == "Grade_Tier12" or grade == "Grade_Tier13" then
					---A
					self:diffuse(color("#993742"))
				elseif grade == "Grade_Tier14" then
					---B
					self:diffuse(color("#5b78bb"))
				elseif grade == "Grade_Tier15" or grade == "Grade_Tier16" then
					---C & D
					self:diffuse(color("#c97bff"))
				elseif grade == "Grade_Tier15" or grade == "Grade_Tier16" then
					---F
					self:diffuse(color("#820000"))
				else
					--No play / failed
					self:diffuse(color("#4d4d4d"))
				end

--I was going to make clear lamps dim when not on the selected song but it didn't work properly.
--Now I think it looks better when they're at full brightness so I might not try again.
--Still keeping this here just in case
--[[			if focus then
				self:diffusealpha(1)
			else
				self:diffusealpha(0.4)
			end--]]
		end
	};
--Lamp glow
t[#t+1] = Def.Sprite{
	InitCommand = function(self)
		self:fadeleft(0)
		self:halign(1)
		self:zoom(1)
		self:x(-120)
		self:y(15)
		self:diffusealpha(1)
		self:diffuse(color("#4d4d4d"))
		end,
		SetGradeCommand = function(self, params)
		local focus = params.HasFocus
		local grade = params.Grade

				if grade == "Grade_Tier01" or grade == "Grade_Tier02" or grade == "Grade_Tier03" or grade == "Grade_Tier04" then 
					--AAAA
					self:Load(THEME:GetPathG("","WheelItem/AAAA lamp"))
					self:blend("BlendMode_Add")
					self:diffusealpha(1)
				elseif grade == "Grade_Tier05" or grade == "Grade_Tier06" or grade == "Grade_Tier07" then 
					---AAA
					self:Load(THEME:GetPathG("","WheelItem/AAA lamp"))
					self:blend("BlendMode_Add")
					self:diffusealpha(1)
				elseif grade == "Grade_Tier08" or grade == "Grade_Tier09" or grade == "Grade_Tier10" then
					---AA
					self:Load(THEME:GetPathG("","WheelItem/AA lamp"))
					self:blend("BlendMode_Add")
					self:diffusealpha(1)
				else
					--Don't glow unless AA or above
					self:diffusealpha(0)
				end

--[[			if focus then
				self:diffusealpha(1)
			else
				self:diffusealpha(0.4)
			end--]]
		end
	};

return t