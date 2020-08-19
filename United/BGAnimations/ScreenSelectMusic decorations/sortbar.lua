local t = Def.ActorFrame {}

--Sort bar background
t[#t + 1] =
  Def.Quad{
    InitCommand=function(self)
      self:halign(0):valign(0):xy(640,155):zoomto(1205,35):diffuse(color("#866d18")):diffusealpha(1)
    end
  }

--Sort bar highlight
t[#t + 1] =
  Def.Quad{
    InitCommand=function(self)
      self:halign(0):valign(0):xy(640,155):zoomto(150,35):diffuse(color("#e3b22a")):diffusealpha(1)
    end
  }

return t