RegisterCommand("quest", function()
    SetNuiFocus(true, true) -- Aktivuje kurzor
    SendNUIMessage({
        type = "showQuest",  -- Tento typ by měl odpovídat tomu, co používáš v JavaScriptu
        text = "Načítám úkol..."  -- Můžeš zde změnit text úkolu
    })
end, false)

RegisterNUICallback("closeUI", function(data, cb)
    SetNuiFocus(false, false)  -- Zavře UI a deaktivuje kurzor
    cb({})
end)


