local scriptCode = [[
-- wait for game to fully load
repeat task.wait() until game:IsLoaded()

local player = game:GetService("Players").LocalPlayer
repeat task.wait() until player and player.Character

task.wait(2) -- extra safety wait for map/UI

print("Now fully teleported, running script")

loadstring(game:HttpGet("https://raw.githubusercontent.com/xorrfiis/XORFIIAUTOAIMASSISTPC/refs/heads/main/aio.luau"))()
]]

-- run now
loadstring(scriptCode)()

-- run again after teleport
if queue_on_teleport then
    queue_on_teleport(scriptCode)
end
