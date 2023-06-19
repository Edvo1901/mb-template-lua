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

function Text(key, value)
    if not key or not value then return end
    if not Lang[Config.Language].key.value then return end
    return Lang[Config.Language].key.value
end