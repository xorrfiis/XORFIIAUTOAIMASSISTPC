local url = "https://raw.githubusercontent.com/xorrfiis/XORFIIAUTOAIMASSISTPC/refs/heads/main/aio.luau"

-- queue script for next teleport
if queue_on_teleport then
    queue_on_teleport([[
        local url = "https://raw.githubusercontent.com/xorrfiis/XORFIIAUTOAIMASSISTPC/refs/heads/main/aio.luau"

        repeat task.wait() until game:IsLoaded()

        local player = game:GetService("Players").LocalPlayer
        repeat task.wait() until player and player.Character

        task.wait(2)

        print("1111")

        loadstring(game:HttpGet(url))()
    ]])
end

-- run immediately in the current server
repeat task.wait() until game:IsLoaded()

local player = game:GetService("Players").LocalPlayer
repeat task.wait() until player and player.Character

task.wait(2)

print("2222")

loadstring(game:HttpGet(url))()
