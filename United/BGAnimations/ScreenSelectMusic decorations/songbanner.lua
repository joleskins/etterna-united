local t = Def.ActorFrame {}

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
        self:Load(bnpath)
      else
        local bnpath = SONGMAN:GetSongGroupBannerPath(SCREENMAN:GetTopScreen():GetMusicWheel():GetSelectedSection())
          if not bnpath or bnpath == "" then
            bnpath = THEME:GetPathG("Common", "fallback banner")
          end
        self:Load(bnpath)
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
          self:finishtweening()
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
          self:finishtweening()
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
          self:finishtweening()
          self:xy(16+1,80):halign(0):valign(0)
          self:zoom(1)
          self:settext("BPM")
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
          self:finishtweening()
          self:diffusealpha(0)
          self:xy(48-9,80):halign(0):valign(0)
          self:zoom(1)
          self:settextf("%5.0f", songbpm[1])
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
      end,

      RateChangedMessageCommand = function(self)
        self:queuecommand("BPMNumbers")
      end,
    },

}

return t