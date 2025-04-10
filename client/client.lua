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

-- Zajistí, že při ukončení resource se UI zavře
AddEventHandler('onResourceStop', function(resourceName)
    if resourceName == GetCurrentResourceName() then
        print("Resource started, ensuring UI is closed")
        openUi = false
        SetNuiFocus(false, false)  -- Zavře UI, pokud resource skončí
    end
end)


