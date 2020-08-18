function ChangeMusicRate(rate, params)
	if params.Name == "PrevScore" and rate < 2.95 then
		GAMESTATE:GetSongOptionsObject("ModsLevel_Preferred"):MusicRate(rate + 0.1)
		GAMESTATE:GetSongOptionsObject("ModsLevel_Song"):MusicRate(rate + 0.1)
		GAMESTATE:GetSongOptionsObject("ModsLevel_Current"):MusicRate(rate + 0.1)
		MESSAGEMAN:Broadcast("CurrentRateChanged")
	elseif params.Name == "NextScore" and rate > 0.55 then
		GAMESTATE:GetSongOptionsObject("ModsLevel_Preferred"):MusicRate(rate - 0.1)
		GAMESTATE:GetSongOptionsObject("ModsLevel_Song"):MusicRate(rate - 0.1)
		GAMESTATE:GetSongOptionsObject("ModsLevel_Current"):MusicRate(rate - 0.1)
		MESSAGEMAN:Broadcast("CurrentRateChanged")
	end

	if params.Name == "PrevRate" and rate < 3 then
		GAMESTATE:GetSongOptionsObject("ModsLevel_Preferred"):MusicRate(rate + 0.05)
		GAMESTATE:GetSongOptionsObject("ModsLevel_Song"):MusicRate(rate + 0.05)
		GAMESTATE:GetSongOptionsObject("ModsLevel_Current"):MusicRate(rate + 0.05)
		MESSAGEMAN:Broadcast("CurrentRateChanged")
	elseif params.Name == "NextRate" and rate > 0.5 then
		GAMESTATE:GetSongOptionsObject("ModsLevel_Preferred"):MusicRate(rate - 0.05)
		GAMESTATE:GetSongOptionsObject("ModsLevel_Song"):MusicRate(rate - 0.05)
		GAMESTATE:GetSongOptionsObject("ModsLevel_Current"):MusicRate(rate - 0.05)
		MESSAGEMAN:Broadcast("CurrentRateChanged")
	end
end