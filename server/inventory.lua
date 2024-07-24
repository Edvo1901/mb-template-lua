local QBCore = exports['qb-core']:GetCoreObject()

function AddItem(source, itemName, itemAmount)
    if Config.Inventory == "qb-inventory" then
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player then return Debug("Cannot find player") end
        Player.Functions.AddItem(itemName, itemAmount)
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[itemName], "add")
    elseif Config.Inventory == "ox_inventory" then
        local success, response = exports.ox_inventory:AddItem(source, itemName, itemAmount)
        if not success then
            return Debug(response)
        end
    end
end

function RemoveItem(source, itemName, itemAmount)
    if Config.Inventory == "qb-inventory" then
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player then return Debug("Cannot find player") end
        local item = Player.Functions.GetItemByName(itemName)
        if not item then return end
        Player.Functions.RemoveItem(itemName, itemAmount)
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[itemName], "remove")
    elseif Config.Inventory == "ox_inventory" then
        local success, response = exports.ox_inventory:RemoveItem(source, itemName, itemAmount)
        if not success then
            return Debug(response)
        end
    end
end

function HasItem(src, itemName)
    if Config.Inventory == "ox_inventory" then
        local totalItem = exports.ox_inventory:GetItemCount(src, itemName)
        if totalItem > 0 then
            return true
        else
            return false
        end
    elseif Config.Inventory == "qb-inventory" then
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        local hasItem = QBCore.Functions.GetItemByName(src, itemName)
        if hasItem then
            return true
        else
            return false
        end
    end
end