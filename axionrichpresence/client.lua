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

    SetDiscordAppId(AxionRichPresenceConfig.AppID)

    SetRichPresence(AxionRichPresenceConfig.RichText:gsub("{player}", name):gsub("{playercount}", playerCount):gsub("{maxplayers}", maxPlayers))

    if AxionRichPresenceConfig.ShowLargeAsset then
        SetDiscordRichPresenceAsset(AxionRichPresenceConfig.LargeAsset)
        SetDiscordRichPresenceAssetText(AxionRichPresenceConfig.LargeAssetText)
    end

    if AxionRichPresenceConfig.ShowSmallAsset then
        SetDiscordRichPresenceAssetSmall(AxionRichPresenceConfig.SmallAsset)
        SetDiscordRichPresenceAssetSmallText(AxionRichPresenceConfig.SmallAssetText)
    end

    if AxionRichPresenceConfig.ShowDiscordButton then
        SetDiscordRichPresenceAction(0, "Discord", AxionRichPresenceConfig.DiscordInvite)
    end

    if AxionRichPresenceConfig.ShowServerButton then
        SetDiscordRichPresenceAction(1, "Connect to FiveM", AxionRichPresenceConfig.ServerLink)
    end
end

-- Receive max players
RegisterNetEvent("richpresence:receiveMaxPlayers", function(maxP)
    maxPlayers = maxP
end)

-- Receive player count
RegisterNetEvent('richpresence:returnPlayerCount', function(count)
    playerCount = count
end)