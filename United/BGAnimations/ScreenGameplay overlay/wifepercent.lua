local t = Def.ActorFrame {}
t[#t + 1] = Def.ActorFrame {
	LoadFont("Common Large") ..
		{
			Name = "DisplayPercent",
			InitCommand = function(self)
				self:zoom(0.8):halign(1):valign(0):xy(SCREEN_RIGHT-10+2,10+2):diffuse(color("0,0,0,1"))
			end,
			OnCommand = function(self)
				self:settextf("%05.2f%%", 0)
			end,
			JudgmentMessageCommand = function(self, msg)
				self:settextf("%05.2f%%", math.floor(msg.WifePercent * 100) / 100)
			end
		},

	LoadFont("Common Large") ..
		{
			Name = "DisplayPercent",
			InitCommand = function(self)
				self:zoom(0.8):halign(1):valign(0):xy(SCREEN_RIGHT-10,10)
			end,
			OnCommand = function(self)
				self:settextf("%05.2f%%", 0)
			end,
			JudgmentMessageCommand = function(self, msg)
				self:settextf("%05.2f%%", math.floor(msg.WifePercent * 100) / 100)
			end
		}
}
return t
