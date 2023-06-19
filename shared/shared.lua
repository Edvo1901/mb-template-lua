function Debug(msg)
    if Config.Debug then
        print(msg)
    end
end

function Notify(message, type, source)
    local title = Lang[Config.Language]["text"]["title"]

	if Config.Notify == "okokNotify" then
		if not source then
            exports['okokNotify']:Alert(title, message, 10000, type)
		else
            TriggerClientEvent('okokNotify:Alert', source, title, message, 10000, type)
        end
	elseif Config.Notify == "qb-core" then
		if not source then
            TriggerEvent("QBCore:Notify", message, type)
		else
            TriggerClientEvent("QBCore:Notify", source, message, type)
        end
    elseif Config.Notify == "mb-notification" then
        if not source then
            exports['mb-notification']:Notify(title, message, 10000, type)
        else
            TriggerClientEvent("mb-notify:client:SendNotify", source, title, message, 10000, type)
        end
    elseif Config.Notify == "roda-notify" then
        if not source then
            exports['Roda_Notifications']:showNotify(message, type, 10000)
        else
            TriggerClientEvent('Roda_Notifications:showNotify', source, message, type, 10000)
        end
    elseif Config.Notify == "esx" then
        if not source then
            TriggerEvent("esx:showNotification", message)
        else
            TriggerClientEvent("esx:showNotification", source, message)
        end
    else
        print("Your type of notify choice is not supported")
    end
end

function DisplayText(text, type)
    if Config.TextUI == "qb-core" then
        if type == 'open' and text then
            exports["qb-core"]:DrawText(text)
        else
            exports["qb-core"]:HideText()
        end
    elseif Config.TextUI == "okok" then
        if type == 'open' and text then
            exports['okokTextUI']:Open(text, "darkblue", 'right')
        else
            exports['okokTextUI']:Close()
        end
    elseif Config.TextUI == "ox_lib" then
        if type == 'open' and text then
            lib.showTextUI(text, {
                position = "right-center",
                icon = 'hand',
                style = {
                    borderRadius = 0,
                    backgroundColor = '#48BB78',
                    color = 'white'
                }
            })
        else
            lib.hideTextUI()
        end
    else
        print("Your type of text ui choice is not supported")
    end
end