function LoadAnimation(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Wait(100)
    end
end

function ModelLoader(model)
    if not HasModelLoaded(model) then
        RequestModel(model)
        while not HasModelLoaded(model) do
            Citizen.Wait(1)
        end
    end
end

function CreateSingleBlips(coords, radius)
    local blipZone = AddBlipForRadius(coords, radius)
    SetBlipSprite(blipZone, 9)
    SetBlipColour(blipZone, 1)
    SetBlipAlpha(blipZone, 80)
    SetBlipAsShortRange(blipZone, true)
    local blip = AddBlipForCoord(coords)
    SetBlipSprite(blip, 68)
    SetBlipColour(blip, 1)
    SetBlipScale(blip, 0.8)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("name")
    EndTextCommandSetBlipName(blip)
end

function CreateMultipleBlips()
    for k,v in ipairs(Config.Location) do
        local blip = AddBlipForCoord(v.location)
        SetBlipSprite(blip, 68)
        SetBlipColour(blip, 1)
        SetBlipScale(blip, 0.8)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("name")
        EndTextCommandSetBlipName(blip)
    end
end