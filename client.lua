ESX = exports["es_extended"]:getSharedObject()
local on = true

function display(bool)
    on = bool
    SetNuiFocus(false, false)
    SendNUIMessage({
        status = on,
        id = GetPlayerServerId(PlayerId()),
    })
end

RegisterCommand('watermark', function(source, args)
    display(not on)
end)

RegisterNetEvent('esx:playerLoaded', function()
    display(true)
end)