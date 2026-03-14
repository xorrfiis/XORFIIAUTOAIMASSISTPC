loadstring(game:HttpGet("https://raw.githubusercontent.com/xorrfiis/XORFIIAUTOAIMASSISTPC/refs/heads/main/aio.luau"))()

local TeleportService = game:GetService("TeleportService")

TeleportService.TeleportInitFailed:Connect(function()
    print("0000")
end)

TeleportService.LocalPlayerArrivedFromTeleport:Connect(function()
    print("1111")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xorrfiis/XORFIIAUTOAIMASSISTPC/refs/heads/main/aio.luau"))()
end)
