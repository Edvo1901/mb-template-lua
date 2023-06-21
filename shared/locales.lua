local Lang = {
    ["en"] = {
        text = {
            title = ""
        }
    },
    ["vn"] = {
        text = {
            title = ""
        }
    }
}

function Text(key, value, ...)
    if not key or not value then return end
    local textTemplate = Lang[Config.Language][key][value]
    if not textTemplate then return end
    return string.format(textTemplate, ...)
end