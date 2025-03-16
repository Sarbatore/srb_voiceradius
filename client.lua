local voiceMode = nil
local isDrawing = false
local endTime = 0

AddEventHandler("pma-voice:setTalkingMode", function(vm)
    voiceMode = Config.VoiceModes[vm]
    if (not voiceMode) then return end

    endTime = GetGameTimer() + Config.DrawTime    
    if (isDrawing) then return end
    isDrawing = true

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)

            if (GetGameTimer() > endTime) then
                isDrawing = false
                return
            end

            DrawMarker(-1795314153, GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 0.0, Config.ZOffset), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, voiceMode.distance, voiceMode.distance, Config.Height, voiceMode.color.r, voiceMode.color.g, voiceMode.color.b, voiceMode.color.a, 0, 0, 2, 0, 0, 0, 0)
        end
    end)
end)