local RSGCore = exports['rsg-core']:GetCoreObject()
local npcId = nil


RegisterCommand("openquest", function()
    local quest = Config.Quests[1]
    if quest then
        SetNuiFocus(true, true)
        SendNUIMessage({
            action = "showQuest",
            title = quest.title,
            description = quest.description,
            request = quest.request
        })
    end
end, false)

RegisterNetEvent("quest:open", function()
    local quest = Config.Quests[1]
    if quest then
        SetNuiFocus(true, true)
        SendNUIMessage({
            action = "showQuest",
            title = quest.title,
            description = quest.description,
            request = quest.request
        })
    end
end)

RegisterNUICallback("closeUI", function(data, cb)
    SetNuiFocus(false, false) 
    cb({})
end)


    local model = GetHashKey(Config.Ped.model)
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(0)
    end

    local ped = CreatePed(model, Config.Ped.coords.x, Config.Ped.coords.y, Config.Ped.coords.z-1.0, Config.Ped.coords.w, false, true, false)
    Wait(1)
    SetPedCanPlayAmbientAnims(ped, true)
    SetPedCanRagdollFromPlayerImpact(ped, false)
    SetPedFleeAttributes(ped, 0, false)
    FreezeEntityPosition(ped, true)
    Citizen.InvokeNative(0x283978A15512B2FE, ped)
    SetEntityInvincible(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetPedCanRagdoll(ped, false)
    SetPedCanBeTargetted(ped, false)
    SetPedRelationshipGroupHash(ped, GetHashKey("PLAYER"))

    local menuItems = {}
    table.insert(menuItems, {
        name = 'open',
        label = Config.Ped.eye.openLabel,
        onSelect = function()
            TriggerEvent("quest:open")
            TriggerServerEvent('InteractSound_SV:PlayOnSource','quest1', 1.0)
        end
        })

    exports["meta_target"]:addLocalEnt('quest_script'..ped, Config.Ped.eye.label, Config.Ped.eye.icon, ped, 2.0, false, menuItems, {})
    npcId = ped

    AddEventHandler('onResourceStop', function(resName)
        if resName ~= GetCurrentResourceName() then
            return
        end
        SetEntityAsMissionEntity(npcId, true, true)
        DeleteEntity(npcId)
    end)
    
