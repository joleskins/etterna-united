local function highlight(self)
	if self:IsVisible() then
		self:queuecommand("Highlight")
	end
end

local function highlightIfOver(self)
	if isOver(self) then
		self:diffusealpha(0.75)
	else
		self:diffusealpha(0.2)
	end
end

t = Def.ActorFrame {
	InitCommand=function(self)
		self:SetUpdateFunction(highlight)
	end
}

--[[t[#t + 1] =
	Def.Quad {
	InitCommand = function(self)
		self:xy(16,19):zoomto(20, 20):diffuse(color("#ffffff")):diffusealpha(0.2)
	end
}--]]

t[#t + 1] =
	Def.Quad {
	InitCommand = function(self)
		self:xy(16,19):zoomto(111,25):diffuse(color("#ffffff")):diffusealpha(0.2):halign(0):valign(0)
	end,
	HighlightCommand=function(self)
		highlightIfOver(self)
	end,
	GainFocusCommand=function(self)
		self:diffusealpha(0)
	end,
	LoseFocusCommand=function(self)
		self:diffusealpha(1)
	end
}

return t
