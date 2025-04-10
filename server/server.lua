local RSGCore = exports['rsg-core']:GetCoreObject()

local function selectRandomLocation(locations)
    local index = math.random(#locations)
    return locations[index]
end

local npcLocation = selectRandomLocation(Config.NPC.zones)

RegisterNetEvent('test_script:server:loadNpc')
AddEventHandler('test_script:server:loadNpc', function()
    TriggerClientEvent('test_script:client:loadNpc', source, npcLocation)
end)