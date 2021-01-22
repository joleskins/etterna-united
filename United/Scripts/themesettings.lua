local defaultConfig = {
	global = {
		HealthToggle = 1, -- 1 = on
		HealthPosition = 1
	},
	NPSDisplay = {
		DynamicWindow = false,
		MaxWindow = 2,
		MinWindow = 1 -- unused.
	},
	eval = {
		CurrentTimeEnabled = true,
		JudgmentBarEnabled = true,
		ScoreBoardEnabled = true,
		ScoreBoardMaxEntry = 10,
		SongBGType = 1 -- 1 = song bg, 2 = grade+common, 3 = grade only
	},
	color = {
		main = "#00AEEF"
	}
}

themeConfig = create_setting("themeConfig", "themeConfig.lua", defaultConfig, -1)
themeConfig:load()