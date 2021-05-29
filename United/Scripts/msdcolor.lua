-- Colorized stuff
function byMSD(x)
	if x < 20 then
		return HSV(47,.96,.96)

	elseif x < 25 then
		return HSV(21,.97,.97)

	elseif x < 30 then
		return HSV(340,1,1)

	elseif x < 35 then
		return HSV(305,.99,.97)

	elseif x > 35 then
		return HSV(305,.99,.97)
	end
	return HSV(0, 0.9, 0.9)
end