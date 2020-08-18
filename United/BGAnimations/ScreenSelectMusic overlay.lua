local t = Def.ActorFrame {}

--Avatar/Profile definitions
--This is really stupid but I'm going to need the checks in the future
local theTexture = nil

if theTexture == nil then
  avatarTexture = THEME:GetPathG("","Profile/Avatars/default")
else
  avatarTexture = asdfasdfasdf
end

if theTexture == nil then
  bannerTexture = THEME:GetPathG("","Profile/Banners/" .. tostring(math.random(1,40)) .. ".png")
else
  avatarTexture = asdfasdfasdf
end

--Banner background
--Make this a fallback sprite instead of a quad later
--[[t[#t + 1] =
  Def.Quad{
    InitCommand=function(self)
      self:halign(0):valign(0):xy(75,455):zoomto(500,127):diffuse(color("#000000")):diffusealpha(0.4)
    end
  }--]]

--StepsDisplay background
t[#t + 1] = Def.ActorFrame {
  InitCommand=function(self)
    self:xy(75,455)
  end,

  Def.Quad{
    InitCommand=function(self)
      self:halign(0):valign(0):xy(0,0):zoomto(500,127):diffuse(color("#000000")):diffusealpha(0.4)
    end
  },

--StepsDisplay placeholders

--Easy(selected)
--[[t[#t + 1] =
  Def.Quad {
  Name="DiffHighlightEasy";
  InitCommand = function(self)
    self:xy(91,474):zoomto(111,25):halign(0):valign(0):diffuse(color("#a435c4")):diffusealpha(1)
  end
}
t[#t + 1] =
  LoadFont("_raleway extrabold 16px") ..
    {
      InitCommand=function(self)
        self:uppercase(true):diffusealpha(1):halign(0):valign(0):xy(126,481)
      end,
      OnCommand=function(self)
        self:settext("EASY")
      end
  }--]]

--Easy(locked)
  Def.Quad {
  Name="DiffFrameTopNormal";
  InitCommand = function(self)
    self:xy(16,19):zoomto(111,2):halign(0):valign(0):diffusealpha(0.2)
  end
  },
  Def.Quad {
  Name="DiffFrameRightNormal";
  InitCommand = function(self)
    self:xy(127,21):zoomto(2,21):halign(1):valign(0):diffusealpha(0.2)
  end
  },
  Def.Quad {
  Name="DiffFrameLeftNormal";
  InitCommand = function(self)
    self:xy(16,21):zoomto(2,21):halign(0):valign(0):diffusealpha(0.2)
  end
  },
  Def.Quad {
  Name="DiffFrameBottomNormal";
  InitCommand = function(self)
    self:xy(16,42):zoomto(111,2):halign(0):valign(0):diffusealpha(0.2)
  end
  },
  LoadFont("_raleway extrabold 16px") ..
    {
      InitCommand=function(self)
        self:uppercase(true):diffusealpha(1):halign(0):valign(0):xy(51-2,26):diffusealpha(0.2)
      end,
      OnCommand=function(self)
        self:settext("EASY")
      end
  },
--Normal(selected)
--[[t[#t + 1] =
  Def.Quad {
  Name="DiffHighlightNormal";
  InitCommand = function(self)
    self:xy(210,474):zoomto(111,25):halign(0):valign(0):diffuse(color("#a435c4")):diffusealpha(1)
  end
}
t[#t + 1] =
  LoadFont("_raleway extrabold 16px") ..
    {
      InitCommand=function(self)
        self:uppercase(true):diffusealpha(1):halign(0):valign(0):xy(231,481)
      end,
      OnCommand=function(self)
        self:settext("NORMAL")
      end
  }--]]

--Normal(locked)
  Def.Quad {
  Name="DiffFrameTopNormal";
  InitCommand = function(self)
    self:xy(135,19):zoomto(111,2):halign(0):valign(0):diffusealpha(0.2)
  end
  },
  Def.Quad {
  Name="DiffFrameRightNormal";
  InitCommand = function(self)
    self:xy(246,21):zoomto(2,21):halign(1):valign(0):diffusealpha(0.2)
  end
  },
  Def.Quad {
  Name="DiffFrameLeftNormal";
  InitCommand = function(self)
    self:xy(135,21):zoomto(2,21):halign(0):valign(0):diffusealpha(0.2)
  end
  },
  Def.Quad {
  Name="DiffFrameBottomNormal";
  InitCommand = function(self)
    self:xy(135,42):zoomto(111,2):halign(0):valign(0):diffusealpha(0.2)
  end
  },
  LoadFont("_raleway extrabold 16px") ..
    {
      InitCommand=function(self)
        self:uppercase(true):diffusealpha(1):halign(0):valign(0):xy(156,26):diffusealpha(0.2)
      end,
      OnCommand=function(self)
        self:settext("NORMAL")
      end
  },

--Hard(selected)
--[[t[#t + 1] =
  Def.Quad {
  Name="DiffHighlightHard";
  InitCommand = function(self)
    self:xy(329,474):zoomto(111,25):halign(0):valign(0):diffuse(color("#a435c4")):diffusealpha(1)
  end
}
t[#t + 1] =
  LoadFont("_raleway extrabold 16px") ..
    {
      InitCommand=function(self)
        self:uppercase(true):diffusealpha(1):halign(0):valign(0):xy(363,481)
      end,
      OnCommand=function(self)
        self:settext("HARD")
      end
  }--]]

--Hard(not selected )
  Def.Quad {
  Name="DiffFrameTopHard";
  InitCommand = function(self)
    self:xy(254,19):zoomto(111,2):halign(0):valign(0):diffuse(color("#a435c4")):diffusealpha(1)
  end
  },
  Def.Quad {
  Name="DiffFrameRightHard";
  InitCommand = function(self)
    self:xy(365,21):zoomto(2,21):halign(1):valign(0):diffuse(color("#a435c4")):diffusealpha(1)
  end
  },
  Def.Quad {
  Name="DiffFrameLeftHard";
  InitCommand = function(self)
    self:xy(254,21):zoomto(2,21):halign(0):valign(0):diffuse(color("#a435c4")):diffusealpha(1)
  end
  },
  Def.Quad {
  Name="DiffFrameBottomHard";
  InitCommand = function(self)
    self:xy(254,42):zoomto(111,2):halign(0):valign(0):diffuse(color("#a435c4")):diffusealpha(1)
  end
  },
  LoadFont("_raleway extrabold 16px") ..
    {
      InitCommand=function(self)
        self:uppercase(true):diffusealpha(1):halign(0):valign(0):xy(288,26):diffuse(color("#a435c4"))
      end,
      OnCommand=function(self)
        self:settext("HARD")
      end
  },

--Challenge(selected)
  Def.Quad {
  Name="DiffHighlightChallenge";
  InitCommand = function(self)
    self:xy(373,19):zoomto(111,25):halign(0):valign(0):diffuse(color("#a435c4")):diffusealpha(1)
  end
  },
  LoadFont("_raleway extrabold 16px") ..
    {
      InitCommand=function(self)
        self:uppercase(true):diffusealpha(1):halign(0):valign(0):xy(380,26)
      end,
      OnCommand=function(self)
        self:settext("CHALLENGE")
      end
  },

--MSD Display. Adapted from Til Death
    CurrentRateChangedMessageCommand = function(self)
    self:queuecommand("GetMSD")
    end,

    LoadFont("_vikive bold 48px") ..
        {
          Name = "MSD Value",
          InitCommand = function(self)
            self:xy(484-9,44+19):halign(1):valign(0):diffusealpha(0):zoom(1)
          end,
          GetMSDCommand = function(self)
          local song = GAMESTATE:GetCurrentSong()
          local steps = GAMESTATE:GetCurrentSteps(PLAYER_1)
            if song then
              if steps:GetStepsType() == "StepsType_Dance_Single" then
                local meter = steps:GetMSD(getCurRateValue(), 1)
                self:settextf("%05.2f", meter):diffusealpha(1)
                self:diffuse(byMSD(meter)):diffusealpha(1)
              else
                self:settextf("%5.2f", steps:GetMeter()):diffusealpha(1)
                self:diffuse(byDifficulty(steps:GetDifficulty())):diffusealpha(1)
              end
            else
              self:settext("")
            end
          end,
          CurrentRateChangedMessageCommand = function(self)
          self:queuecommand("GetMSD")
          end,
          CurrentStepsP1ChangedMessageCommand = function(self)
          self:queuecommand("GetMSD")
          end
    },
--Hardcoded MSD (mockup, no functionality)
--Keeping this as a reference for how the MSD should look in the end
--[[t[#t + 1] =
  LoadFont("_vikive bold 48px") ..
    {
      InitCommand=function(self)
        self:uppercase(true):diffusealpha(1):halign(0):valign(0):xy(443-7,518):diffuse(color("#e3b22a"))
      end,
      OnCommand=function(self)
        self:settext("1")
      end
  }
t[#t + 1] =
  LoadFont("_vikive bold 48px") ..
    {
      InitCommand=function(self)
        self:uppercase(true):diffusealpha(1):halign(0):valign(0):xy(469-7,518):diffuse(color("#e3b22a"))
      end,
      OnCommand=function(self)
        self:settext("4")
      end
  }
t[#t + 1] =
  LoadFont("_vikive bold 48px") ..
    {
      InitCommand=function(self)
        self:uppercase(true):diffusealpha(1):halign(0):valign(0):xy(489-7,518):diffuse(color("#e3b22a"))
      end,
      OnCommand=function(self)
        self:settext(".")
      end
  }
t[#t + 1] =
  LoadFont("_vikive bold 48px") ..
    {
      InitCommand=function(self)
        self:uppercase(true):diffusealpha(1):halign(0):valign(0):xy(507-7,518):diffuse(color("#e3b22a"))
      end,
      OnCommand=function(self)
        self:settext("6")
      end
  }
t[#t + 1] =
  LoadFont("_vikive bold 48px") ..
    {
      InitCommand=function(self)
        self:uppercase(true):diffusealpha(1):halign(0):valign(0):xy(531-7,518):diffuse(color("#e3b22a"))
      end,
      OnCommand=function(self)
        self:settext("1")
      end
  }--]]

--MSD text 
  LoadFont("_raleway extrabold 12px") ..
    {
      InitCommand=function(self)
        self:uppercase(true):diffusealpha(0.3):halign(1):valign(0):xy(484,104)
      end,
      OnCommand=function(self)
        self:settext("MSD")
      end
  }
}

--Banner(but it's actually the song background image)
t[#t + 1] = Def.ActorFrame{
  InitCommand = function(self)
    self:xy(75,155)
  end,

  Def.Sprite {
  Name = "Banner",
    InitCommand = function(self)
      self:halign(0):valign(0):xy(0,0):scaletoclipped(500,300):diffusealpha(1)
    end,

    CurrentSongChangedMessageCommand = function(self)
      if INPUTFILTER:IsBeingPressed("tab") then
        self:finishtweening():smooth(0.25):diffusealpha(0):sleep(0.2):queuecommand("ModifyBanner")
      else
        self:finishtweening():queuecommand("ModifyBanner")
      end
    end,

    ModifyBannerCommand = function(self)
      local song = GAMESTATE:GetCurrentSong()
      self:finishtweening()
      if song then
        local bnpath = GAMESTATE:GetCurrentSong():GetBackgroundPath()
      if not bnpath then
        bnpath = THEME:GetPathG("Common", "fallback banner")
        end
        self:LoadBackground(bnpath)
      else
        local bnpath = SONGMAN:GetSongGroupBannerPath(SCREENMAN:GetTopScreen():GetMusicWheel():GetSelectedSection())
          if not bnpath or bnpath == "" then
            bnpath = THEME:GetPathG("Common", "fallback banner")
          end
        self:LoadBackground(bnpath)
      end
      self:diffusealpha(1)
    end,
  },

  Def.Sprite {
  Name = "Banner Gradient",
    Texture=THEME:GetPathG("","Banner Gradient");
    InitCommand = function(self)
      self:halign(0):valign(0):xy(0,0):zoomto(500,300):diffusealpha(1)
    end,
  },

  LoadFont("_raleway semibold 24px") ..
    {
      Name = "Title Text",
      
      InitCommand = function(self)
          self:xy(16,30):halign(0):valign(0)
          self:zoom(1)
          self:queuecommand("TitleWithRate")
      end,

      TitleWithRateCommand = function(self)
      local song = GAMESTATE:GetCurrentSong()
      local rawsongtitle = song:GetMainTitle()
      local finalsongtitle

        if getCurRateDisplayString() == "1.0xMusic" then
          ratestring = ""
          plusstring = ""
        else
          ratestring = getCurRateDisplayString():gsub("Music","")
          plusstring = " + "
        end
          self:diffusealpha(0)
          self:xy(16,30):halign(0):valign(0)
          self:zoom(1)
          self:settext(rawsongtitle .. plusstring .. ratestring)
        --Truncate song title if it exceeds 26 characters
        if self:GetZoomedWidth() > 425 then
          finalsongtitle = string.sub(song:GetMainTitle(),1,26) .. "..."
        else
          finalsongtitle = song:GetMainTitle()
        end
          self:settext(finalsongtitle .. plusstring .. ratestring)
          self:accelerate(0.15)
          self:diffusealpha(1)
      end,

      StepsChangedCommand = function(self)
          self:queuecommand("TitleWithRate")
      end,
      CurrentSongChangedMessageCommand = function(self)
        if INPUTFILTER:IsBeingPressed("tab") then
          self:finishtweening():smooth(0.25):diffusealpha(0):sleep(0.2):queuecommand("TitleWithRate")
        else
          self:finishtweening():queuecommand("TitleWithRate")
        end
      end,

      --For rate keybinds
      CodeMessageCommand = function(self, params)
      local rate = getCurRateValue()
      ChangeMusicRate(rate, params)
        if INPUTFILTER:IsBeingPressed("tab") then
          self:finishtweening():smooth(0.25):diffusealpha(0):sleep(0.2):queuecommand("TitleWithRate")
        else
          self:finishtweening():queuecommand("TitleWithRate")
        end
      end,
    },

  LoadFont("_raleway semibold 16px") ..
    {
      Name = "Artist Text",
      
      InitCommand = function(self)
          self:xy(16,30):halign(0):valign(0)
          self:zoom(1)
          self:queuecommand("ArtistText")
      end,

      ArtistTextCommand = function(self)
      local song = GAMESTATE:GetCurrentSong()
      local songartist = song:GetDisplayArtist()
          self:diffusealpha(0)
          self:xy(16,56):halign(0):valign(0)
          self:zoom(1)
          self:settext(songartist)
          self:accelerate(0.15)
          self:diffusealpha(.65)
      end,

      StepsChangedCommand = function(self)
          self:queuecommand("ArtistText")
      end,
      CurrentSongChangedMessageCommand = function(self)
        if INPUTFILTER:IsBeingPressed("tab") then
          self:finishtweening():smooth(0.25):diffusealpha(0):sleep(0.2):queuecommand("ArtistText")
        else
          self:finishtweening():queuecommand("ArtistText")
        end
      end
    },

  LoadFont("_raleway extrabold 12px") ..
    {
      Name = "BPM Text",
      
      InitCommand = function(self)
          self:xy(16+1,30):halign(0):valign(0)
          self:zoom(1)
          self:queuecommand("BPMText")
      end,

      BPMTextCommand = function(self)
      local song = GAMESTATE:GetCurrentSong()
      local songartist = song:GetDisplayArtist()
          self:diffusealpha(0)
          self:xy(16+1,80):halign(0):valign(0)
          self:zoom(1)
          self:settext("BPM")
          self:accelerate(0.15)
          self:diffusealpha(.65)
      end,

      StepsChangedCommand = function(self)
          self:queuecommand("BPMText")
      end,
      CurrentSongChangedMessageCommand = function(self)
        if INPUTFILTER:IsBeingPressed("tab") then
          self:finishtweening():smooth(0.25):diffusealpha(0):sleep(0.2):queuecommand("BPMText")
        else
          self:finishtweening():queuecommand("BPMText")
        end
      end
    },

  LoadFont("_vikive bold 12px") ..
    {
      Name = "BPM Numbers",
      
      InitCommand = function(self)
          self:xy(48-9,30):halign(0):valign(0)
          self:zoom(1)
          self:queuecommand("BPMNumbers")
      end,

      BPMNumbersCommand = function(self)
      local song = GAMESTATE:GetCurrentSong()
      local songbpm = song:GetDisplayBpms()
          self:diffusealpha(0)
          self:xy(48-9,80):halign(0):valign(0)
          self:zoom(1)
          self:settextf("%5.0f", songbpm[1])
          self:accelerate(0.15)
          self:diffusealpha(.65)
      end,

      StepsChangedCommand = function(self)
          self:queuecommand("BPMNumbers")
      end,
      CurrentSongChangedMessageCommand = function(self)
        if INPUTFILTER:IsBeingPressed("tab") then
          self:finishtweening():smooth(0.25):diffusealpha(0):sleep(0.2):queuecommand("BPMNumbers")
        else
          self:finishtweening():queuecommand("BPMNumbers")
        end
      end
    },

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
--Doesn't update when group is changed. I don't know how to do SetUpdateFunction()
t[#t + 1] =
  LoadFont("_raleway black 48px") ..
    {
      InitCommand=function(self)
        self:diffusealpha(0.51):halign(1):valign(1):xy(1840 + 5,140)
      end,

      OnCommand=function(self)
        local song = GAMESTATE:GetCurrentSong()
        self:settext(song:GetGroupName())
      end,

      CurrentSongChangedMessageCommand=function(self)
        local song = GAMESTATE:GetCurrentSong()
        if song == nil then
          return
        else
          self:settext(song:GetGroupName())
        end
      end
  }

--Clock
--Moved to its own file which I stole from Til Death because my own clock was throwing errors
t[#t + 1] = LoadActor("_currenttime")

--[[--1
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
}--]]

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

--Profile avatar
t[#t + 1] =
  Def.Sprite{
  	Texture=avatarTexture;
    InitCommand=function(self)
      self:halign(0):valign(0):diffusealpha(1):zoomto(64,64):xy(1316,24)
    end
  }

--Profile banner
t[#t + 1] =
  Def.Sprite{
    Texture=bannerTexture;
    InitCommand=function(self)
      self:halign(0):valign(0):diffusealpha(1):zoomto(250,60):xy(1380,26)
    end
  }

--Profile frame
t[#t + 1] =
  Def.Quad{
    Name="ProfileFrameTop";
    InitCommand=function(self)
      self:halign(0):valign(0):xy(1316,24):zoomto(314,2):diffuse(color("#3c3c3c")):diffusealpha(1)
    end
  }

t[#t + 1] =
  Def.Quad{
    Name="ProfileFrameRight";
    InitCommand=function(self)
      self:halign(1):valign(0):xy(1630,26):zoomto(2,60):diffuse(color("#3c3c3c")):diffusealpha(1)
    end
  }

t[#t + 1] =
  Def.Quad{
    Name="ProfileFrameBottom";
    InitCommand=function(self)
      self:halign(0):valign(0):xy(1316,86):zoomto(314,2):diffuse(color("#3c3c3c")):diffusealpha(1)
    end
  }

t[#t + 1] =
  Def.Quad{
    Name="ProfileFrameLeft";
    InitCommand=function(self)
      self:halign(0):valign(0):xy(1316,26):zoomto(2,60):diffuse(color("#3c3c3c")):diffusealpha(1)
    end
  }

t[#t + 1] =
  Def.Quad{
    Name="ProfileFrameDivider";
    InitCommand=function(self)
      self:halign(1):valign(0):xy(1380,26):zoomto(2,60):diffuse(color("#3c3c3c")):diffusealpha(1)
    end
  }

t[#t + 1] =
  LoadFont("Common Normal") ..
    {
      Name = "Name",
      InitCommand = function(self)
        self:xy(643, 14):maxwidth(400):halign(0):zoom(0.35):valign(0)
      end,
      SetCommand = function(self)
        self:settextf("%s", profileName)
        if profileName == "Default Profile" or profileName == "" then
          easyInputStringWithFunction(
            translated_info["ProfileNew"],
            64,
            false,
            setnewdisplayname
          )
        end
      end,
      MouseLeftClickMessageCommand = function(self)
        if isOver(self) and not SCREENMAN:get_input_redirected(PLAYER_1) then
          easyInputStringWithFunction(translated_info["NameChange"], 64, false, setnewdisplayname)
        end
      end,
      ProfileRenamedMessageCommand = function(self, params)
        self:settextf("%s", profileName)
      end
    }

  --MSD string
t[#t + 1] =
    LoadFont("Common Normal") ..
    {
      Name = "Rating",
      InitCommand = function(self)
        self:xy(643, 24):maxwidth(400):halign(0):zoom(0.18):valign(0)
      end,
      SetCommand = function(self)
        self:settext("LV.")
      end,
      MouseLeftClickMessageCommand = function(self)
        if isOver(self) and not SCREENMAN:get_input_redirected(PLAYER_1) then
          easyInputStringWithFunction(translated_info["NameChange"], 64, false, setnewdisplayname)
        end
      end,
    }


  --Player rating string
t[#t + 1] =
    LoadFont("Common Normal") ..
    {
      Name = "Rating",
      InitCommand = function(self)
        self:xy(636, 24):maxwidth(400):halign(0):zoom(0.6):valign(0)
      end,
      SetCommand = function(self)
        self:settextf("%5.0f", playerRating)
      end,
      MouseLeftClickMessageCommand = function(self)
        if isOver(self) and not SCREENMAN:get_input_redirected(PLAYER_1) then
          easyInputStringWithFunction(translated_info["NameChange"], 64, false, setnewdisplayname)
        end
      end,
    }


t[#t + 1] =
    LoadFont("Common Bold") ..
    {
      Name = "Rating2",
      InitCommand = function(self)
        self:valign(1):halign(1):xy(642+120-2, 24+10):zoom(0.3)
      end,
      SetCommand = function(self)
        self:settext(math.floor((math.fmod(playerRating, 1)+0.005)*100) .. "%")
      end,
    }

return t
