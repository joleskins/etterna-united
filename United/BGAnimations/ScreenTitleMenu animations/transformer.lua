--Transformer animations

local t = Def.ActorFrame{

	Def.Quad{
		InitCommand=function(self)
			self:diffuse(color("#FFFFFF"))
			self:diffusealpha(0.4)
			self:zoomto(96,96)
			self:addrotationz(45)
			self:xy(480,480)
		end,

		OnCommand=function(self)
			self:sleep(0.1)
			self:queuecommand("Thump")
		end,

		ThumpCommand=function(self)
			local oneBeat = 60 / titleSongBPMs[songDiceRoll]
				--Reset beat counter when the song loops
				if titleSongBeatCount >= titleSongTotalBeats[songDiceRoll] then
					titleSongBeatCount = 0
				end
				--Use beat count to play special animation every bar
				if titleSongBeatCount % 4 == 0 then
					self:spring( oneBeat * 0.1)
					self:addy(-75)
					self:zoomto(96,192)
					self:spring( oneBeat * 0.1)
					self:addy(75)
					self:zoomto(96,96)
					self:sleep( oneBeat * 0.8)
				elseif titleSongBeatCount % 7 == 0 then
					self:decelerate( oneBeat * 0.2)
					self:zoomto(96,96)
					self:addy(900)
					self:accelerate( oneBeat * 0.2)
					self:zoomto(96,96)
					self:addy(-900)
					self:sleep( oneBeat * 0.6)
				else
					self:decelerate( oneBeat * 0.2)
					self:zoomto(96,96)
					self:addx(45)
					self:accelerate( oneBeat * 0.2)
					self:zoomto(96,96)
					self:addx(-45)
					self:sleep( oneBeat * 0.6)
				end
				self:queuecommand("Thump")
		end
	},
}

return t