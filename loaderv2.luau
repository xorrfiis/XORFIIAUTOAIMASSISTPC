local scriptCode = [[

if queue_on_teleport then
    queue_on_teleport([==[
]] .. scriptCode .. [[
]==])
end

repeat task.wait() until game:IsLoaded()

local player = game:GetService("Players").LocalPlayer
repeat task.wait() until player and player.Character

task.wait(2)

print("Teleported!")

loadstring(game:HttpGet("https://raw.githubusercontent.com/xorrfiis/XORFIIAUTOAIMASSISTPC/refs/heads/main/aio.luau"))()
]]

loadstring(scriptCode)()
