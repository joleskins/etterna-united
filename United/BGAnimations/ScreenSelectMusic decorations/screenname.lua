local t = Def.ActorFrame {}

--Screen name text
t[#t + 1] =
  LoadFont("_raleway black 36px") ..
    {
      InitCommand=function(self)
        self:uppercase(true):diffusealpha(0.1):halign(0):valign(0):xy(75,50)
      end,

      OnCommand=function(self)
        self:settext("song select")
      end
  }

return t