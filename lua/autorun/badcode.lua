
AddCSLuaFile()

if ( SERVER ) then return end

function endedchat()
    chat.AddText( Color( 255, 51, 51 ), "Thanks For using my Bad Coder Achievement Unlocker Addon. ", Color( 100, 255, 100 ),"This addon has now been disabled.", Color(255, 102, 178), "To remove this message unsubscribe from the addon here: https://steamcommunity.com/sharedfiles/filedetails/?id=2931508026", Color(0, 204, 204), " Leave a like while your there." )
end

concommand.Add( "achievement_nume", function()
    print(achievements.IsAchieved(23))
    print(achievements.GetName(23))
    print(achievements.GetCount(23))
end )

concommand.Add( "force_lua_error", function()
    errorcode()
end )

function lua_error()
    errorcode()
end

 if achievements.IsAchieved(23) == true then
    endedchat()
end

function achievementbadrun()

 local badachieve = achievements.GetCount(23)
 timer.Simple( 5, function()
    if achievements.IsAchieved(23) == true then
       endedchat()
    end
end)

 for i = badachieve, 501 do
    local badachieve = achievements.GetCount(23)
    timer.Simple( 1, function()
        lua_error()
    end)
    if badachieve > 499 then
    endedchat()
    end
 end
end

 if achievements.IsAchieved(23) == false then
    achievementbadrun()
end


