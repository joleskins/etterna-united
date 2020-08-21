local t = Def.ActorFrame {}

--Load individual lua files instead of having one giant file
t[#t + 1] = LoadActor("mainscoreboard")
t[#t + 1] = LoadActor("difficultydisplay")
t[#t + 1] = LoadActor("songbanner")
t[#t + 1] = LoadActor("sortbar")
t[#t + 1] = LoadActor("playerpanel")
--t[#t + 1] = LoadActor("wheelhighlight")
t[#t + 1] = LoadActor("screenname")
t[#t + 1] = LoadActor("packname")
t[#t + 1] = LoadActor("clock")

return t