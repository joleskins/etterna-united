local rawScore = SCOREMAN:GetMostRecentScore()
local scorePercent = rawScore:GetWifeScore() * 100
--[[local grades = {
		Grade_Tier01 = "#ffffff", -- AAAAA
		Grade_Tier02 = "#66ccff", -- AAAA:
		Grade_Tier03 = "#66ccff", -- AAAA.
		Grade_Tier04 = "#66ccff", -- AAAA
		Grade_Tier05 = "#e9ba00", -- AAA:
		Grade_Tier06 = "#e9ba00", -- AAA.
		Grade_Tier07 = "#e9ba00", -- AAA
		Grade_Tier08 = "#2ee16f", -- AA:
		Grade_Tier09 = "#2ee16f", -- AA.
		Grade_Tier10 = "#2ee16f", -- AA
		Grade_Tier11 = "#d74c5b", -- A:
		Grade_Tier12 = "#d74c5b", -- A.
		Grade_Tier13 = "#d74c5b", -- A
		Grade_Tier14 = "#54739f", -- B
		Grade_Tier15 = "#775097", -- C
		Grade_Tier16 = "#8c6239", -- D
		Grade_Tier17 = "#000000",
		Grade_Failed = "#dc2929", -- F
		Grade_None = "#4d4d4d" -- no play
	},--]]

function byGrade(scorePercent)
	if scorePercent < 70 then
		return "#8c6239"
	elseif scorePercent >= 70 and scorePercent < 80 then
		return "#54739f"
	elseif scorePercent >= 80 and scorePercent < 90 then
		return "#d74c5b"
	elseif scorePercent >= 90 and scorePercent < 93 then
		return "#e1822e"
	elseif scorePercent >= 93 and scorePercent < 99.7 then
		return "#2ee16f"
	elseif scorePercent >= 99.7 and scorePercent < 99.955 then
		return "#e9ba00"
	elseif scorePercent >= 99.955 then
		return "#66ccff"
	end
	--return color(grades[grade]) or color(colorConfig:get_data().grades["Grade_None"])
end