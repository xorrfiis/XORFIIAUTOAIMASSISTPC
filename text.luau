local TweenService = game:GetService("TweenService")
local player = game:GetService("Players").LocalPlayer
while not player do task.wait() end

local playerGui = player:WaitForChild("PlayerGui")

-- Create ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "FadeHello"
gui.ResetOnSpawn = false
gui.DisplayOrder = 999
gui.Parent = playerGui

-- Fullscreen dark overlay
local overlay = Instance.new("Frame")
overlay.Size = UDim2.new(1,0,1,0)
overlay.Position = UDim2.new(0,0,0,0)
overlay.BackgroundColor3 = Color3.new(0,0,0)
overlay.BackgroundTransparency = 1 -- start invisible
overlay.ZIndex = 10
overlay.Parent = gui

-- Big white text
local text = Instance.new("TextLabel")
text.Size = UDim2.new(1,0,1,0)
text.Position = UDim2.new(0,0,0,0)
text.BackgroundTransparency = 1
text.Text = "Xorfii's Auto and Aim Assist for PC"
text.TextColor3 = Color3.new(1,1,1)
text.TextScaled = true
text.Font = Enum.Font.GothamBold
text.ZIndex = 11
text.TextTransparency = 1 -- start invisible
text.Parent = gui

-- Tween settings
local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut) -- fade duration

-- Fade in
TweenService:Create(overlay, tweenInfo, {BackgroundTransparency = 0.5}):Play()
TweenService:Create(text, tweenInfo, {TextTransparency = 0}):Play()

-- Wait visible time
task.wait(2) -- change to 2-3 seconds if you like

-- Fade out
TweenService:Create(overlay, tweenInfo, {BackgroundTransparency = 1}):Play()
TweenService:Create(text, tweenInfo, {TextTransparency = 1}):Play()

-- Wait for fade out to finish
task.wait(0.5)

gui:Destroy()