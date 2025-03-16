AddEventHandler("pma-voice:setTalkingMode", function(vm)
    local voiceMode = Config.VoiceModes[vm]
    if (not voiceMode) then return end

    Citizen.CreateThread(function()
        local markerColor = voiceMode.color
        local markerScale = voiceMode.distance
        
        while true do
            Citizen.Wait(0)
             
            if (not IsControlPressed(0, Config.ControlKey)) then
                break
            end

            DrawMarker(-1795314153, GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 0.0, Config.ZOffset), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, markerScale, markerScale, Config.Height, markerColor.r, markerColor.g, markerColor.b, markerColor.a, 0, 0, 2, 0, 0, 0, 0)
        end
    end)
end)