--[[local bgPosTable = {
--The grid of backgrounds is shaped like
--a 4x4 grid of dots that's missing the corners so it becomes 12 sprites in total.
--The points in the grid are offset from the center point

--Centered square of backgrounds
  {SCREEN_CENTER_X-1,SCREEN_CENTER_Y-1},
  {SCREEN_CENTER_X-0.5,SCREEN_CENTER_Y-0.5},
  {SCREEN_CENTER_X+1,SCREEN_CENTER_Y-1},
  {SCREEN_CENTER_X+0.5,SCREEN_CENTER_Y-0.5},
  {SCREEN_CENTER_X+1,SCREEN_CENTER_Y+1},
  {SCREEN_CENTER_X+0.5,SCREEN_CENTER_Y+0.5},
  {SCREEN_CENTER_X-1,SCREEN_CENTER_Y+1},
  {SCREEN_CENTER_X-0.5,SCREEN_CENTER_Y+0.5},

--Outer left side
  {SCREEN_CENTER_X-2,SCREEN_CENTER_Y-1},
  {SCREEN_CENTER_X-2,SCREEN_CENTER_Y-0.5},
  {SCREEN_CENTER_X-2,SCREEN_CENTER_Y+0.5},
  {SCREEN_CENTER_X-2,SCREEN_CENTER_Y+1},

--Outer right side
  {SCREEN_CENTER_X+2,SCREEN_CENTER_Y-1},
  {SCREEN_CENTER_X+2,SCREEN_CENTER_Y-0.5},
  {SCREEN_CENTER_X+2,SCREEN_CENTER_Y+0.5},
  {SCREEN_CENTER_X+2,SCREEN_CENTER_Y+1},


--Outer top side
  {SCREEN_CENTER_X-1,SCREEN_CENTER_Y-2},
  {SCREEN_CENTER_X-0.5,SCREEN_CENTER_Y-2},
  {SCREEN_CENTER_X+0.5,SCREEN_CENTER_Y-2},
  {SCREEN_CENTER_X+1,SCREEN_CENTER_Y-2},

--Outer bottom side
  {SCREEN_CENTER_X-1,SCREEN_CENTER_Y+2},
  {SCREEN_CENTER_X-0.5,SCREEN_CENTER_Y+2},
  {SCREEN_CENTER_X+0.5,SCREEN_CENTER_Y+2},
  {SCREEN_CENTER_X+1,SCREEN_CENTER_Y+2}
}--]]


--The following is functionally the same as the commented table above,
--but it's automated and works in ways I don't understand.
--It was created by poco0317, so if you really want to know how it works, he is the one to ask.
local bgPosTable = {}
for i = 1, 16 do
  -- i == 1, 4, 13, 16 are dummy spaces
  if i ~= 1 and i ~= 4 and i ~= 13 and i ~= 16 then
    local x = SCREEN_CENTER_X
    local y = SCREEN_CENTER_Y
    local xPos = true
    local yPos = false
    local index = i-1 -- 0 indexing
    if (index % 4) < 2 then -- in Q2, Q3
      xPos = false
    end
    if (index < 8) then -- in Q1, Q2
      yPos = true
    end
    x = x + (xPos and 1 or -1) * ((index % 4 == 0 or i % 4 == 0) and 2 or 1)
    y = y + (yPos and 1 or -1) * ((index % 4 == index or i > 12) and 2 or 1)
    bgPosTable[#bgPosTable+1] = {x, y}
  end
end

local brightness = 0.033

local t = Def.ActorFrame {}


--[[t[#t + 1] =
  Def.Quad{
    InitCommand=function(self)
      self:halign(0):valign(0):xy(0,0):zoomto(1920,1080):diffuse(color("#333333")):diffusealpha(0.5)
    end
  }--]]

for i=1,12 do
	t[#t + 1] =
		Def.Sprite {
			CurrentSongChangedMessageCommand = function(self)
				self:finishtweening():smooth(0.5):diffusealpha(0):sleep(0.2):queuecommand("ModifySongBackground")
			end,
			ModifySongBackgroundCommand = function(self)
				self:finishtweening()
				if GAMESTATE:GetCurrentSong() and GAMESTATE:GetCurrentSong():GetBackgroundPath() then
					self:finishtweening()
					self:visible(true)
					self:LoadBackground(GAMESTATE:GetCurrentSong():GetBackgroundPath())
					self:scaletocover(-3, -3, SCREEN_WIDTH+3, SCREEN_BOTTOM+3)
					self:xy(bgPosTable[i][1], bgPosTable[i][2])
					self:sleep(0.25)
					self:smooth(0.5)
					self:diffusealpha(brightness)
				else
					self:visible(false)
				end
			end,
			OffCommand = function(self)
				self:smooth(0.5):diffusealpha(0)
			end,
			BGOffMessageCommand = function(self)
				self:finishtweening()
				self:visible(false)
			end
		}
end

return t
