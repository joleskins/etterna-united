local t = Def.ActorFrame {}

--Pack name text
--Doesn't update when scrolling through groups, not sure how to make it do that
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

return t