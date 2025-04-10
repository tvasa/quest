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
        title = "Jídlo pro rodinu",
        description = "Howdy, dobrodruhu, Mám malý problém. Moje žena a děti mají hlad, a včera nám zvířata zničila pole. Zbylo nám jenom pár mrkví, ale potřebujeme jich více, aby se dalo něco připravit. Byl bych ti vděčný, kdybys mohl vyrazit do polí a přinesl mi aspoň pět mrkví. Není to daleko, ale doufám, že ti to nezabere moc času. Odměním tě, jak jen budu moci. Tak co, pomůžeš nám?",
        reward = {
            {item = 'apple', quantity = 1, chance = 100},
        },
        request = {
            {item = "carrot", quantity = 5},
        }
    },
    [2] = {
        title = "Ovoce pro děti",
        description = "Mrkve nám hodně pomohli, ale teď bychom potřebovali něco víc. Naše děti mají rády jablka, ale nemáme žádná. Mohl bys prosím zajít do sadu a přinést nám alespoň tři jablka? Byli bychom ti moc vděční. Odměním tě, jak jen budu moci. Tak co, pomůžeš nám?",
        reward = {
            {item = 'apple', quantity = 1, chance = 100},
        },
        request = {
            {item = "carrot", quantity = 5},
        }
    },
}

