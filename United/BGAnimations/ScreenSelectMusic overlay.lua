local t = Def.ActorFrame {}

--Banner background
t[#t + 1] =
  Def.Quad{
    InitCommand=function(self)
      self:halign(0):valign(0):xy(75,455):zoomto(500,127):diffuse(color("#000000")):diffusealpha(0.4)
    end
  }

--Stepsdisplay background
t[#t + 1] =
  Def.Quad{
    InitCommand=function(self)
      self:halign(0):valign(0):xy(75,155):zoomto(500,300):diffuse(color("#000000")):diffusealpha(1)
    end
  }

--Banner (doesn't work)
t[#t+1] = Def.Sprite {
  Name = "Banner",
  InitCommand = function(self)
    self:xy(SCREEN_CENTER_X/2,120)
  end,
  SetCommand = function(self)
    if topScreen:GetName() == "ScreenSelectMusic" or topScreen:GetName() == "ScreenNetSelectMusic" then
      local bnpath = nil
      if song then
        bnpath = song:GetBannerPath()
      elseif group then
        bnpath = SONGMAN:GetSongGroupBannerPath(group)
      end
      if not bnpath or bnpath == "" then
        bnpath = THEME:GetPathG("Common", "fallback banner")
      end
      self:LoadBackground(bnpath)
      self:zoomto(500,300)
    end
  end
}

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

--Pack name text
t[#t + 1] =
  LoadFont("_raleway black 48px") ..
    {
      InitCommand=function(self)
        self:diffusealpha(0.51):halign(1):valign(1):xy(1840,140)
      end,

      OnCommand=function(self)
        local whereAreWe = SCREENMAN:GetTopScreen()
        self:settext("pack name")
      end
  }

--This would be the real clock numbers but the kerning is suuuuuuuuper scuffed and idk how to fix it

--[[--Clock(numbers)
t[#t + 1] =
  LoadFont("_vikive bold 24px") ..
    {
      InitCommand=function(self)
        self:diffusealpha(0.51):halign(1):valign(0):xy(1810,50)
      end,

      OnCommand=function(self)
        local whereAreWe = SCREENMAN:GetTopScreen()
        --Clock update function
        local function UpdateTime(self)
            self:GetChild('Time'):settext(string.format("%02i:%02i", Hour(), Minute() ))
        end

        self:settext("11:11")
      end
  }--]]

--1
t[#t + 1] =
  LoadFont("_vikive bold 24px") ..
    {
      InitCommand=function(self)
        self:diffusealpha(0.1):halign(1):valign(0):xy(1815 - 49 , 50)
      end,

      OnCommand=function(self)
        local whereAreWe = SCREENMAN:GetTopScreen()
        --Clock update function
        local function UpdateTime(self)
            self:GetChild('Time'):settext(string.format("%02i:%02i", Hour(), Minute() ))
        end

        self:settext("1")
      end
}

--2
t[#t + 1] =
  LoadFont("_vikive bold 24px") ..
    {
      InitCommand=function(self)
        self:diffusealpha(0.1):halign(1):valign(0):xy(1815 - 37 , 50)
      end,

      OnCommand=function(self)
        local whereAreWe = SCREENMAN:GetTopScreen()
        --Clock update function
        local function UpdateTime(self)
            self:GetChild('Time'):settext(string.format("%02i:%02i", Hour(), Minute() ))
        end

        self:settext("2")
      end
}

--:
t[#t + 1] =
  LoadFont("_vikive bold 24px") ..
    {
      InitCommand=function(self)
        self:diffusealpha(0.1):halign(1):valign(0):xy(1815 - 25 , 50)
      end,

      OnCommand=function(self)
        local whereAreWe = SCREENMAN:GetTopScreen()
        --Clock update function
        local function UpdateTime(self)
            self:GetChild('Time'):settext(string.format("%02i:%02i", Hour(), Minute() ))
        end

        self:settext(":")
      end
}

--3
t[#t + 1] =
  LoadFont("_vikive bold 24px") ..
    {
      InitCommand=function(self)
        self:diffusealpha(0.1):halign(1):valign(0):xy(1815 - 14 , 50)
      end,

      OnCommand=function(self)
        local whereAreWe = SCREENMAN:GetTopScreen()
        --Clock update function
        local function UpdateTime(self)
            self:GetChild('Time'):settext(string.format("%02i:%02i", Hour(), Minute() ))
        end

        self:settext("3")
      end
}

--4
t[#t + 1] =
  LoadFont("_vikive bold 24px") ..
    {
      InitCommand=function(self)
        self:diffusealpha(0.1):halign(1):valign(0):xy(1815,50)
      end,

      OnCommand=function(self)
        local whereAreWe = SCREENMAN:GetTopScreen()
        --Clock update function
        local function UpdateTime(self)
            self:GetChild('Time'):settext(string.format("%02i:%02i", Hour(), Minute() ))
        end

        self:settext("4")
      end
}

--PM
t[#t + 1] =
  LoadFont("_raleway black 18px") ..
    {
      InitCommand=function(self)
        self:diffusealpha(0.1):halign(1):valign(0):xy(1840,52)
      end,

      OnCommand=function(self)
        local whereAreWe = SCREENMAN:GetTopScreen()
        self:settext("PM")
      end
  }

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

--[[for i = 1, 600 do
t[#t+1] =
  Def.Sprite {
    Name="wooo" .. tostring(i);
    Texture=THEME:GetPathG("","beuluu");
    InitCommand=function(self)
      self:diffusealpha(0):xy(SCREEN_CENTER_X,SCREEN_CENTER_Y):zoom(math.random(0.1,1))
    end,
    OnCommand=function(self)
      self:sleep(5)
      self:diffusealpha(1)
      self:decelerate(math.random(0.5,3))
      self:addx(math.random(-2000,2000))
      self:addy(math.random(-2000,2000))
      self:addrotationy(math.random(0,360))
      self:accelerate(2)
      self:addrotationy(9999)
      self:diffusealpha(0)
    end
  }
end--]]

return t
