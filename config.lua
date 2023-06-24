Config = {}

-- System option

-- Notify system. Please choose one of the following: "qb-core", "okok", "mb-notification", "roda-notify", "esx" (only if you are an ESX user)
-- You can add more notifications in shared/shared.lua
Config.Notify = "qb-core"

-- Text display. Please choose one of the following: "qb-core", "okok", "ox_lib".
-- Sorry I dont know what ESX user use so no support for this yet.
-- But you can add your own text ui in shared/shared.lua
Config.TextUI = "ox_lib"

-- Debug mode. Always keep this as `false` unless something goes wrong.
-- Turn this on without a reason might consume a huge resources on your server.
Config.Debug = false

-- Language option.
-- Please choose one of the following: "en" (English), "vn" (Vietnamese)
-- You can add your own language in shared/locales.lua
Config.Language = "en"