--

FS.Config = FS.Config or {}

     
/* Here you can create the commands
example: 
    ["COMMAND"] = {                         // The command ( DONT USE "/" only the name.. the / was create automatically )
        Prefix = "[PREFIX]",                // The command Prefix
        PrefixColor = Color(255,255,255), // The color from the Prefix
        TextColor = Color(255,255,255)    // The color from the Text
        EnableNames = true,                 // if this false then dont set automatically the playername before the text // example: true = [PREFIX] *NAME TEXT || false = [PREFIX] TEXT
        EnableSuffix = true,                // This is the suffix before name.
        SuffixString = "*",                 // here you can enter your custom suffix     
    }
*/  
 
FS.Config.CreateCommand = {
    ["funk"] = {
        Prefix = "[FUNK]",
        PrefixColor = Color(0,25,250),
        TextColor = Color(255,255,255),
        EnableNames = true,
        EnableSuffix = true,
        SuffixString = "*",
    },
} 

 










//Dont Remove this or you have to reload "sh_commands.lua" manually
/*<----------- [ Reload the commands while change the config ] ----------->*/
                                FS:LoadCommands()
/*-------------------------------------------------------------------------*/