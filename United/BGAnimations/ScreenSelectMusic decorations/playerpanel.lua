--Avatar/Profile definitions
--This is probably stupid but I'm going to need the checks in the future
local selectedTexture = nil

if selectedTexture == nil then
  avatarTexture = THEME:GetPathG("","Profile/Avatars/default")
else
  avatarTexture = asdfasdfasdf
end

if selectedTexture == nil then
  bannerTexture = THEME:GetPathG("","Profile/Banners/" .. tostring(math.random(1,40)) .. ".png")
else
  avatarTexture = asdfasdfasdf
end

local t = Def.ActorFrame {}

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