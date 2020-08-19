local t = Def.ActorFrame {}

t[#t + 1] =
	LoadFont("Common Normal") ..
		{
			Name = "NormalText",
			InitCommand = function(self)
				local score = SCOREMAN:GetMostRecentScore()
				self:xy(SCREEN_CENTER_X,SCREEN_CENTER_Y):zoom(1):halign(.5):valign(.5)
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
				self:settextf(
					"%05.2f%%", 
					notShit.floor(score:GetWifeScore() * 100, 2)
				)
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
					self:settextf(
						"%05.2f%% (%s)", notShit.floor(rescorepercent, 2), ws .. judge
					)
					MESSAGEMAN:Broadcast("RecalculateGraphs", {judge = judge})
				elseif params.Name == "NextJudge" and judge < 9 then
					judge = judge + 1
					clampJudge()
					rescorepercent = getRescoredWife3Judge(3, judge, rescoretable)
					local js = judge ~= 9 and judge or "ustice"
						self:settextf(
							"%05.2f%% (%s)", notShit.floor(rescorepercent, 2), ws .. js
					)
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

return t