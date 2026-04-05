local maxPlayers = 32
local playerCount = 0

Citizen.CreateThread(function()
    while true do
        UpdateRichPresence()
        Citizen.Wait(10000) -- 10 seconds
    end
end)

function UpdateRichPresence()
    local name = GetPlayerName(PlayerId())

    SetDiscordAppId(RichPresenceConfig.AppID)

    SetRichPresence(RichPresenceConfig.RichText:gsub("{player}", name):gsub("{playercount}", playerCount):gsub("{maxplayers}", maxPlayers))

    if RichPresenceConfig.ShowLargeAsset then
        SetDiscordRichPresenceAsset(RichPresenceConfig.LargeAsset)
        SetDiscordRichPresenceAssetText(RichPresenceConfig.LargeAssetText)
    end

    if RichPresenceConfig.ShowSmallAsset then
        SetDiscordRichPresenceAssetSmall(RichPresenceConfig.SmallAsset)
        SetDiscordRichPresenceAssetSmallText(RichPresenceConfig.SmallAssetText)
    end

    if RichPresenceConfig.ShowDiscordButton then
        SetDiscordRichPresenceAction(0, "Discord", RichPresenceConfig.DiscordInvite)
    end

    if RichPresenceConfig.ShowServerButton then
        SetDiscordRichPresenceAction(1, "Connect to FiveM", RichPresenceConfig.ServerLink)
    end
end

-- Receive max players
RegisterNetEvent("richpresence:receiveMaxPlayers", function(maxP)
    print("CLIENT: received max players")
    maxPlayers = maxP
end)

-- Receive player count
RegisterNetEvent('richpresence:returnPlayerCount', function(count)
    print("CLIENT: received player count")
    playerCount = count
end)