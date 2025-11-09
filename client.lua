local RADIO_START_SOUND = { name = "Start_Squelch", set = "CB_RADIO_SFX" }
local RADIO_END_SOUND   = { name = "End_Squelch", set = "CB_RADIO_SFX" }

RegisterNetEvent('SaltyChat_RadioTrafficStateChanged', function(isSending, primaryRadio, secondaryRadio, name, relay)
    local playerName = name or "Unbekannt"

    if isSending then
        PlaySoundFrontend(-1, RADIO_START_SOUND.name, RADIO_START_SOUND.set, true)
    else
        PlaySoundFrontend(-1, RADIO_END_SOUND.name, RADIO_END_SOUND.set, true)
    end
end)

RegisterNetEvent('SaltyChat_IsSending', function(isSending)
    if isSending then
        PlaySoundFrontend(-1, RADIO_START_SOUND.name, RADIO_START_SOUND.set, true)
    else
        PlaySoundFrontend(-1, RADIO_END_SOUND.name, RADIO_END_SOUND.set, true)
    end
end)

--[[
RegisterCommand('funktest', function()
    PlaySoundFrontend(-1, RADIO_START_SOUND.name, RADIO_START_SOUND.set, true)
    Wait(1000)
    PlaySoundFrontend(-1, RADIO_END_SOUND.name, RADIO_END_SOUND.set, true)
end, false)
]]--