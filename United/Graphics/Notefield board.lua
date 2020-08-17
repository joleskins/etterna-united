local style = GAMESTATE:GetCurrentStyle()
local cols = style:ColumnsPerPlayer()
local pn = PLAYER_1
local whereAreWe = SCREENMAN:GetTopScreen()

--This only works for dance, kb7, and maybe pump. Beat doesn't use 64 column width so that'll look weird
local fieldWidth = cols * 64
local healthX = fieldWidth * 0.5

local t = Def.ActorFrame {}



t[#t + 1] =
	Def.Quad{
		InitCommand=function(self)
			self:diffuse(color("0,0,0,1"))
			self:diffusealpha(0.8)
			self:xy(0,0)
		end,
		OnCommand=function(self)
			self:zoomto(fieldWidth,9999)
		end
	}

t[#t + 1] = Def.ActorFrame {
--Health bar background
	Def.Sprite {
			Name="Health";
			Texture=THEME:GetPathG("","Healthbar/health bg.png");
			Frame0000=0;
			Delay0000=1;
			InitCommand=function(self)
			local health = STATSMAN:GetCurStageStats():GetPlayerStageStats(pn):GetCurrentLife()
				self:halign(0):zoom(0.44444444):diffusealpha(1):addy(1):addx(healthX)
			end,
		};

--Health bar (over 40% health)
	Def.Sprite {
			Name="Health chill";
			Texture=THEME:GetPathG("","Healthbar/health chill.png");
			Frame0000=0;
			Delay0000=1;
			InitCommand=function(self)
			local health = STATSMAN:GetCurStageStats():GetPlayerStageStats(pn):GetCurrentLife()
				self:halign(0):zoom(0.44444444):diffusealpha(1):addy(1):addx(healthX):croptop(1 - health)
			end,
			JudgmentMessageCommand=function(self)
			local health = STATSMAN:GetCurStageStats():GetPlayerStageStats(pn):GetCurrentLife()
				if health >= 0.4 then
					self:stoptweening():decelerate(0.064):diffusealpha(1):croptop( 1 - health )
				else
					self:stoptweening():decelerate(0.064):diffusealpha(0):croptop( 1 - health )
				end
			end
		};

--Health bar (under 40% health)
	Def.Sprite {
			Name="Health danger";
			Texture=THEME:GetPathG("","Healthbar/health danger.png");
			Frame0000=0;
			Delay0000=1;
			InitCommand=function(self)
			local health = STATSMAN:GetCurStageStats():GetPlayerStageStats(pn):GetCurrentLife()
				self:halign(0):zoom(0.44444444):diffusealpha(0):addy(1):addx(healthX):croptop(1 - health)
			end,
			JudgmentMessageCommand=function(self)
			local health = STATSMAN:GetCurStageStats():GetPlayerStageStats(pn):GetCurrentLife()
				if health <= 0.4 then
					self:stoptweening():decelerate(0.064):diffusealpha(1):croptop( 1 - health )
				else
					self:stoptweening():decelerate(0.064):diffusealpha(0):croptop( 1 - health )
				end
			end
		};

--Health glow
	Def.Sprite {
			Name="Health glow";
			Texture=THEME:GetPathG("","Healthbar/health glow.png");
			Frame0000=0;
			Delay0000=1;
			InitCommand=function(self)
			local health = STATSMAN:GetCurStageStats():GetPlayerStageStats(pn):GetCurrentLife()
				self:halign(0):blend("BlendMode_Add"):zoom(0.44444444):diffusealpha(1):addy(1):addx(healthX - 8):croptop(1 - health):diffuseshift():effectcolor1(color("#FFFFFF33")):effectcolor2(color("#FFFFFF88")):fadetop(0.05)
			end,
			JudgmentMessageCommand=function(self)
			local health = STATSMAN:GetCurStageStats():GetPlayerStageStats(pn):GetCurrentLife()
				if health >= 0.4 then
					self:stoptweening():decelerate(0.064):diffusealpha(1):croptop( 1 - health ):fadetop(0.05)
				else
					self:stoptweening():decelerate(0.064):diffusealpha(0):croptop( 1 - health ):fadetop(0.05)
				end
			end
		};
	}
return t