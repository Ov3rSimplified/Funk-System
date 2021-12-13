--

FS.Config = FS.Config or {}

 
FS.Config.EnableNames = true // if this false then dont set automatically the playername before the text
                             // example: true = [PREFIX] *NAME TEXT || false = [PREFIX] TEXT

FS.Config.EnableSuffix = true // This is the suffix before name.
FS.Config.SuffixString = "*" // here you can enter your custom suffix           

/* Here you can create the commands
example: 
    ["COMMAND"] = {                         // The command ( DONT USE "/" only the name.. the / was create automatically )
        Prefix = "[PREFIX]",                // The command Prefix
        PrefixColor = Color(255,255,255), // The color from the Prefix
        TextColor = Color(255,255,255)    // The color from the Text
    }
*/

FS.Config.CreateCommand = {
    ["funk"] = {
        Prefix = "[FUNK]",
        PrefixColor = Color(250,0,0),
        TextColor = Color(255,255,255)
    }
} 

 










//Dont Remove this or you have to reload "sh_commands.lua" manually
/*<----------- [ Reload the commands while change the config ] ----------->*/
                                FS:LoadCommands()
/*-------------------------------------------------------------------------*/