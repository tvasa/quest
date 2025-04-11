local RSGCore = exports['rsg-core']:GetCoreObject()

RegisterNetEvent('l-quest:server:giveBack', function(questId)
    local Player = RSGCore.Functions.GetPlayer(source)
    if not Player then return end
    local Quest = Config.Quests[questId]
    if not Quest then return end

    -- Check if the player has the required items
    for _, requestItem in ipairs(Quest.request) do
        if Player.Functions.GetItemByName(requestItem.item) == nil or 
           Player.Functions.GetItemByName(requestItem.item).amount < requestItem.quantity then
            return -- Player doesn't have enough of the required item
        end
    end

    -- Remove the requested items from the player
    for _, requestItem in ipairs(Quest.request) do
        Player.Functions.RemoveItem(requestItem.item, requestItem.quantity)
    end

    -- Give the rewards to the player
    for _, rewardItem in ipairs(Quest.reward) do
        if math.random(1, 100) <= (rewardItem.chance * 100) then
            Player.Functions.AddItem(rewardItem.item, rewardItem.quantity)
        end
    end
end)

