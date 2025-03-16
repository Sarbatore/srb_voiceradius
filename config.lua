Config = {}

Config.ControlKey = 0x446258B6 -- Page UP

Config.ZOffset = -0.5 -- Z offset of the voice radius

Config.Height = 0.5 -- Height of the voice radius

Config.VoiceModes = {
    [1] = { -- Whisper
        distance = 3.0,
        color = {r = 0, g = 0, b = 255, a = 100}
    },
    [2] = { -- Normal
        distance = 8.0,
        color = {r = 0, g = 255, b = 0, a = 100}
    },
    [3] = { -- Shouting
        distance = 15.0,
        color = {r = 255, g = 0, b = 0, a = 100}
    },
    [4] = { -- Riding
        distance = 32.0,
        color = {r = 255, g = 255, b = 0, a = 100}
    }
}