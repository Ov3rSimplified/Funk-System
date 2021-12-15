DarkRP.removeChatCommand("advert")
function FS:LoadCommands()
	for k, v in pairs(FS.Config.CreateCommand) do 

		DarkRP.declareChatCommand({ command = k, description = k..k, delay = 1.5 })
		 
		if SERVER then
			DarkRP.defineChatCommand(k,function(ply,args)
				if args == "" then 
					DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", "argument", "please enter an argument after the command"))
					return ""
				end
				local DoSay = function(text)
					if text == "" then 
						DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", "argument", "please enter an argument after the command"))
						return
					end
					for kk,vv in pairs(player.GetAll()) do 
						local col = team.GetColor(ply:Team()) 	
						if FS.Config.EnableNames then
							if FS.Config.EnableSuffix then 
								DarkRP.talkToPerson(vv, v.PrefixColor, v.Prefix, v.TextColor, FS.Config.SuffixString..ply:Nick(), text, ply)
							else
								DarkRP.talkToPerson(vv, v.PrefixColor, v.Prefix, v.TextColor, ply:Nick(), text, ply)
							end
						else
							DarkRP.talkToPerson(vv, v.PrefixColor, v.Prefix, v.TextColor, text, ply)		
						end
					end 
				end
				hook.Call("playerAdverted", nil, ply, args)
				return args, DoSay
			end, 1.5)
		else 
			DarkRP.addChatReceiver("/"..k, k, function(ply) return true end)
		end
	end
end
 
FS:LoadCommands()
 
hook.Add("InitPostEntity", "FS.CommandINITLoad", function()
	FS:LoadCommands()
end) 
