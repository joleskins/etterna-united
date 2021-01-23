local t = Def.ActorFrame {}

--StepsDisplay background
t[#t + 1] = Def.ActorFrame {
  InitCommand=function(self)
    self:xy(SCREEN_CENTER_X-250,SCREEN_CENTER_Y)
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

--SSR Display. Adapted from Til Death
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
          local score = SCOREMAN:GetMostRecentScore()
          local song = GAMESTATE:GetCurrentSong()
          local steps = GAMESTATE:GetCurrentSteps(PLAYER_1)
            if song then
              if steps:GetStepsType() == "StepsType_Dance_Single" then
                local meter = score:GetSkillsetSSR("Overall")
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
          OnCommand = function(self)
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

--SSR text 
  LoadFont("_raleway extrabold 12px") ..
    {
      InitCommand=function(self)
        self:uppercase(true):diffusealpha(0.3):halign(1):valign(0):xy(484,104)
      end,
      OnCommand=function(self)
        self:settext("SSR")
      end
  },

--Old placeholder percent
  LoadFont("_vikive bold 48px") ..
    {
      Name = "NormalText",
      InitCommand = function(self)
        local score = SCOREMAN:GetMostRecentScore()
        self:xy(16-9,44+19):zoom(1):halign(0):valign(0)
      end,
      BeginCommand = function(self)
        local score = SCOREMAN:GetMostRecentScore()
        self:queuecommand("Set")
      end,
      SetCommand = function(self)
        local score = SCOREMAN:GetMostRecentScore()
        local wv = score:GetWifeVers()
        local ws = "Wife" .. wv .. " J"
        local js = judge ~= 9 and judge or "ustice"
        if notShit.floor(score:GetWifeScore() * 100, 2) <= 0 then
          self:settext("00.00%")
        else
          self:settextf("%05.2f%%", notShit.floor(score:GetWifeScore() * 100, 2))
        end
      end,
      ScoreChangedMessageCommand = function(self)
        self:queuecommand("Set")
      end,
      CodeMessageCommand = function(self, params)
        local rescoretable = getRescoreElements(pss, score)
        local rescorepercent = 0
        local wv = score:GetWifeVers()
        local ws = "Wife3" .. " J"
        if params.Name == "PrevJudge" and judge > 4 then
          judge = judge - 1
          clampJudge()
          rescorepercent = getRescoredWife3Judge(3, judge, rescoretable)

          if notShit.floor(score:GetWifeScore() * 100, 2) <= 0 then
            self:settext("00.00%")
          else
            self:settextf("%05.2f%% (%s)", notShit.floor(rescorepercent, 2), ws .. judge)
          end
          MESSAGEMAN:Broadcast("RecalculateGraphs", {judge = judge})

        elseif params.Name == "NextJudge" and judge < 9 then
          judge = judge + 1
          clampJudge()
          rescorepercent = getRescoredWife3Judge(3, judge, rescoretable)
          local js = judge ~= 9 and judge or "ustice"
          if notShit.floor(score:GetWifeScore() * 100, 2) <= 0 then
            self:settext("00.00%")
          else
            self:settextf("%05.2f%% (%s)", notShit.floor(rescorepercent, 2), ws .. js)
          end
          MESSAGEMAN:Broadcast("RecalculateGraphs", {judge = judge})
        end

        if params.Name == "ResetJudge" then
          judge = GetTimingDifficulty()
          clampJudge()
          self:playcommand("Set")
          MESSAGEMAN:Broadcast("RecalculateGraphs", {judge = judge})
        end
      end
    }

--[[--Patterns(Skillsets title)
  LoadFont("_raleway extrabold 16px") ..
    {
      InitCommand=function(self)
        self:uppercase(false):diffusealpha(0.3):halign(0):valign(0):xy(16,64-2)
      end,
      OnCommand=function(self)
        self:settext("Patterns")
      end
  },

--Patterns(Skillsets title)
  LoadFont("_raleway semibold 16px") ..
    {
      InitCommand=function(self)
        self:uppercase(false):diffusealpha(1):halign(0):valign(0):xy(16,88-2)
      end,
      OnCommand=function(self)
        self:settext("Technical  Jumpstream  Stamina")
      end
  }--]]

}
return t