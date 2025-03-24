Config = {}

Config.DrawTime = 1000 -- Time in milliseconds to draw the voice radius

Config.ZOffset = -0.5 -- Z offset of the voice radius

Config.Height = 0.5 -- Height of the voice radius

Config.VoiceRanges = {
    [3.5] = { -- Distance
        color = {r = 255, g = 255, b = 0, a = 100} -- Radius color
    },
    [8.0] = {
        color = {r = 255, g = 255, b = 0, a = 100}
    },
    [15.0] = {
        color = {r = 255, g = 255, b = 0, a = 100}
    },
    [32.0] = {
        color = {r = 255, g = 255, b = 0, a = 100}
    },
}