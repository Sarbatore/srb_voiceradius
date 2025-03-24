local isDrawing = false
local drawEndTime = 0
local currentVoiceRange = nil

function DrawVoiceRadius(voiceRange)
    local voiceRangeConfig = Config.VoiceRanges[voiceRange]
    if (not voiceRangeConfig) then return end
    DrawMarker(-1795314153, GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 0.0, Config.ZOffset), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, voiceRange, voiceRange, Config.Height, voiceRangeConfig.color.r, voiceRangeConfig.color.g, voiceRangeConfig.color.b, voiceRangeConfig.color.a, 0, 0, 2, 0, 0, 0, 0)
end

function ShowVoiceRadius(voiceRange)
    currentVoiceRange = voiceRange
    if (not Config.VoiceRanges[currentVoiceRange]) then return end

    drawEndTime = GetGameTimer() + Config.DrawTime
    if (isDrawing) then return end
    isDrawing = true
    
    CreateThread(function()
        while true do
            Wait(1)

            if (GetGameTimer() > drawEndTime) then
                isDrawing = false
                break
            end

            DrawVoiceRadius(currentVoiceRange)
        end
    end)
end

AddEventHandler("pma-voice:setTalkingMode", function(voiceMode)
    local voiceRange = LocalPlayer.state.proximity.distance
    ShowVoiceRadius(voiceRange)
end)

AddEventHandler("SaltyChat_VoiceRangeChanged", function(voiceRange, index, availableVoiceRanges)
    ShowVoiceRadius(voiceRange)
end)