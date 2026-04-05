AddEventHandler('playerConnecting', function()
    local src = source
    local maxPlayers = GetConvarInt("sv_maxClients", 32)
    TriggerClientEvent("richpresence:receiveMaxPlayers", src, maxPlayers)
end)

Citizen.CreateThread(function()
    while true do
        local playerCount = #GetPlayers()
        TriggerClientEvent('richpresence:returnPlayerCount', -1, playerCount)
        Citizen.Wait(10000)
    end
end)