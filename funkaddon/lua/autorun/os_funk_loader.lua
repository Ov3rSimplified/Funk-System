/*
 #--> Funkcommands <--# 

    This addons was made by Ov3rSimplified [https://github.com/Ov3rSimplified].

    Copyright (c) 2021 Ov3Simplified

    DO NOT EDIT ANYTHING HERE!!!!!
*/

FS = FS or {}

local function LoadFiles(dir)
    local files = file.Find(dir.. "/".. "*", "LUA")

	for k, v in pairs(files) do 
		if string.StartWith(v, "cl") then
			if CLIENT then
				local load = include(dir.. "/".. v)
				if load then load() end
			end

			AddCSLuaFile(dir.. "/".. v)
		end 

		if string.StartWith(v, "sv") then
			if SERVER then
				local load = include(dir.. "/".. v)
				if load then load() end
			end
		end

		if string.StartWith(v, "sh") then
			local load = include(dir.. "/".. v)
			if load then load() end

			AddCSLuaFile(dir.. "/".. v)
		end
	end
end 


if GAMEMODE then 
    LoadFiles("faddon")
end

hook.Add( "InitPostEntity", "OS.Funksys", function()
    LoadFiles("faddon")
end)