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

RegisterNUICallback("closeUI", function(data, cb)
    SetNuiFocus(false, false)  -- Zavře UI a deaktivuje kurzor
    cb({})
end)


--- spawn NPC pro úkoly

