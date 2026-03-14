loadstring(game:HttpGet("https://raw.githubusercontent.com/xorrfiis/XORFIIAUTOAIMASSISTPC/refs/heads/main/loader.luau"))()

local ReplicatedStorage = game:GetService('ReplicatedStorage')
ReplicatedStorage.Remotes.Replication.Fighter.SetControls:FireServer("Gamepad")