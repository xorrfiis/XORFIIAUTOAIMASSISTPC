local rivalsGameId = 6035872082 

if game.GameId ~= rivalsGameId then
    game:GetService("Players").LocalPlayer:Kick("Game not supported")
    return
end


loadstring(game:HttpGet("https://raw.githubusercontent.com/xorrfiis/XORFIIAUTOAIMASSISTPC/refs/heads/main/text.luau"))()
task.wait(2)
loadstring(game:HttpGet("https://raw.githubusercontent.com/xorrfiis/XORFIIAUTOAIMASSISTPC/refs/heads/main/func.luau"))()