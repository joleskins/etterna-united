--Score position table
--This is a hacky workaround to make the first score not affected by position commands
--(see line 70)
local scorePosTable = {0,1,2,3,4,5,6}

--Random usernames on scoreboard
local playerTable = {
	"D O G",
	"tHe oNE nAME tHAT IS lONG",
	"lowercase",
	"all seeing eyes",
	"Dole Bananas",
	"manipgang",
	"782653478625",
	"BagelBark500",
	"ankle length men",
	"MAGICFORCE68",
	"dude",
	"tryhard69",
	"username",
	"."
}



local t = Def.ActorFrame {}

	t[#t + 1] = Def.ActorFrame{
		InitCommand=function(self)
	    	self:xy(75,582)
		end,

		--Scoreboard background
		Def.Quad{
	  		InitCommand=function(self)
	  			self:xy(0,0)
	  			self:halign(0)
	  			self:valign(0)
	  			self:zoomto(500,380)
	  			self:diffuse(color("#000000"))
	  			self:diffusealpha(0.2)
	  		end

		},

		--Score scroller frame 
		Def.ActorFrame{
			InitCommand=function(self)
				self:xy(16,10)
				self:zoomto(468,370)
				self:fadebottom(0.05)
			end
		},
	}


--Make 7 scoreboard entries
for i = 1 ,7 do
	t[#t + 1] = Def.ActorFrame{
		InitCommand=function(self)
	    	self:xy(91,592)
		end,

		--Individual score frames
		--This might be restructured in the future when the scores aren't hardcoded
		Def.ActorFrame{
			Name="Score" .. tostring(i);
			InitCommand=function(self)
				self:xy(0,scorePosTable[i] * 60)
				--self:zoomto(468,54)
			end,

			--Player avatar
			Def.Sprite{
				Name="ScoreAvatar" .. tostring(i);
				OnCommand=function(self)
				--Avoid defining file extension to support multiple image formats
				local avatarTexture = THEME:GetPathG("","Placeholders/" .. tostring(math.random(1,14)) .. " scoreboard")
					self:halign(0)
					self:valign(0)
					self:Load(avatarTexture)
					self:scaletoclipped(54,54)
					self:diffusealpha(1)
					--Fade last entry
					if i == 7 then
						self:cropbottom(.85)
						self:fadebottom(0.9)
					end
				end
			},

			LoadFont("_raleway semibold 24px") .. {
					Name="ScoreName" .. tostring(i);
					OnCommand=function(self)
					local playerText = playerTable[math.random(1,14)]
						self:xy(68-2,6+2)
						self:zoom(1)
						self:halign(0)
						self:valign(0)
						self:settext(playerText)
						--Fade last entry
						if i == 7 then
							self:diffusealpha(0)
						end
					end
			},

			LoadFont("_vikive 16px") .. {
					Name="ScoreName" .. tostring(i);
					OnCommand=function(self)
					local marvCount 	= tostring(math.random(900,2200))
					local perfCount 	= tostring(math.random(150,900))
					local greatCount 	= tostring(math.random(10,150))
					local goodCount		= tostring(math.random(10,30))
					local booCount		= tostring(math.random(10,20))
					local missCount		= tostring(math.random(2,60))
					local comboCount	= tostring(math.random(300,2700))
						self:xy(68-2,32+2)
						self:zoom(1)
						self:halign(0)
						self:valign(0)
						self:settext(marvCount .. " / " .. perfCount .. " / " .. greatCount .. " / " .. goodCount .. " / " .. booCount .. " / " .. missCount .. " (" .. comboCount .. "x)")
						--Fade last entry
						if i == 7 then
							self:diffusealpha(0)
						end
					end
			}
		}
	}
end

return t