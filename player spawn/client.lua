local spawnPos = vector3(-1037.648, -2737.965, 20.169)

AddEventHandler('onClientGameTypeStart', function()
    exports.spawnmanager:setAutoSpawnCallback(function()
        exports.spawnmanager:spawnPlayer({
            x = spawnPos.x,
            y = spawnPos.y,
            z = spawnPos.z,
            model = 'mp_m_freemode_01'
        }, function()
            TriggerEvent('chat:addMessage', {
                args = { 'Welcome to Afterlife RP' }
            })
        end)
    end)

    exports.spawnmanager:setAutoSpawn(true)
    exports.spawnmanager:forceRespawn(false)
end)
