RegisterCommand("quest", function()
    local questId = 1  -- Tady můžeš určit, který quest se má zobrazit

    local quest = Config.Quests[questId]  -- Načteme úkol podle ID
    if quest then
        SetNuiFocus(true, true) -- Aktivuje kurzor
        SendNUIMessage({
            type = "showQuest",  -- Tento typ odpovídá tomu, co používáš v javascriptu
            title = quest.title,  -- Posíláme název úkolu
            description = quest.description  -- Posíláme popis úkolu
        })
    else
        print("Quest not found!")
    end
end, false)

RegisterNUICallback("closeUI", function(data, cb)
    SetNuiFocus(false, false)  -- Zavře UI a deaktivuje kurzor
    cb({})
end)


