Config = Config or {}

Config.Ped = {
    model = 'g_m_m_unibanditos_01',
    coords = vector4(-1235.34, -1233.57, 79.27, 107.66),
    eye = {
        label = "Zaměstnavatel",
        icon = "fa-solid fa-user",
        openLabel = "Nabídka práce",
    }
}


Config.Quests = {
    [1] = {
        title = "Materiál na stavbu",
        description = "Ahoj, zrovna se hodí, že jdeš okolo. Potřebuju sehnat 5 klacků a 5 kamenů.",
        reward = {
            {item = 'apple', quantity = 1, chance = 100},
        },
        request = {
            {item = "carrot", quantity = 5},
        }
    },
}