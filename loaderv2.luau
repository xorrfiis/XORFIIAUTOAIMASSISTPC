-- ===== SETTINGS =====
local SCRIPT_URL = "https://raw.githubusercontent.com/xorrfiis/XORFIIAUTOAIMASSISTPC/refs/heads/main/aio.luau"

-- ===== PREVENT DOUBLE EXECUTION =====
if getgenv().MY_LOADER_ACTIVE then return end
getgenv().MY_LOADER_ACTIVE = true

-- ===== FUNCTION THAT RUNS THE SCRIPT =====
local function run()
    repeat task.wait() until game:IsLoaded()

    local Players = game:GetService("Players")
    local player = Players.LocalPlayer
    repeat task.wait() until player and player.Character

    task.wait(2) -- allow map/UI to load

    print("1111")

    loadstring(game:HttpGet(SCRIPT_URL))()
end

-- ===== QUEUE AGAIN FOR NEXT TELEPORT =====
if queue_on_teleport then
    queue_on_teleport([[
        local SCRIPT_URL = "https://raw.githubusercontent.com/xorrfiis/XORFIIAUTOAIMASSISTPC/refs/heads/main/aio.luau"

        repeat task.wait() until game:IsLoaded()

        local Players = game:GetService("Players")
        local player = Players.LocalPlayer
        repeat task.wait() until player and player.Character

        task.wait(2)

        print("2222")

        loadstring(game:HttpGet(SCRIPT_URL))()
    ]])
end

-- ===== RUN NOW =====
run()
