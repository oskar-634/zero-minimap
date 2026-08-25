local show = false

RegisterCommand('radar', function()
    show = not show
end, false)

CreateThread(function()
    while true do
        Wait(500)
        local inVehicle = IsPedInAnyVehicle(PlayerPedId(), false)

        if inVehicle or show then
            DisplayRadar(true)
        else
            DisplayRadar(false)
        end
    end
end)