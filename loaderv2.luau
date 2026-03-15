local url = "https://raw.githubusercontent.com/xorrfiis/XORFIIAUTOAIMASSISTPC/refs/heads/main/aio.luau"

-- queue THIS SAME LOADER again for the next teleport
if queue_on_teleport then
    queue_on_teleport([[
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xorrfiis/XORFIIAUTOAIMASSISTPC/refs/heads/main/aio.luau"))()
    ]])
end

-- wait for game to fully load
repeat task.wait() until game:IsLoaded()

local player = game:GetService("Players").LocalPlayer
repeat task.wait() until player and player.Character

task.wait(2)

print("Executed!")

-- run your script
loadstring(game:HttpGet(url))()
