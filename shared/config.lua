Config = Config or {}

Config.Quests = {
    [1] = {
        title = "Materiál na stavbu",
        description = "Ahoj, zrovna se hodí, že jdeš okolo. Potřebuju sehnat 5 klacků a 5 kamenů.",
        reward = {
            {item = 'apple', quantity = 1, chance = 100},
        },
        request = {
            {item = "carrot", quantity = 5},
            {item = "bandage", quantity = 5}
        }
    },
}