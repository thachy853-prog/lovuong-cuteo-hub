
-- LOVUONG + CUTEO HUB
-- KING EDITION - UI DEMO

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "LOVUONG_CUTEO_HUB"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 260, 0, 300)
frame.Position = UDim2.new(0.5, -130, 0.3, 0)
frame.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
frame.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = frame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 50)
title.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
title.Text = "LOVUONG + CUTEO HUB"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextSize = 17
title.Parent = frame

local function makeButton(name, y)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.88, 0, 0, 38)
    button.Position = UDim2.new(0.06, 0, 0, y)
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 52)
    button.TextColor3 = Color3.new(1, 1, 1)
    button.TextSize = 14
    button.Text = name
    button.Parent = frame

    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 7)
    c.Parent = button

    return button
end

local farm = makeButton("Auto Farm - Demo", 65)
local fruit = makeButton("Fruit Finder - Demo", 110)
local boss = makeButton("Boss Tracker - Demo", 155)
local close = makeButton("Đóng giao diện", 220)

farm.MouseButton1Click:Connect(function()
    farm.Text = "Auto Farm - Chưa kết nối"
end)

fruit.MouseButton1Click:Connect(function()
    fruit.Text = "Fruit Finder - Chưa kết nối"
end)

boss.MouseButton1Click:Connect(function()
    boss.Text = "Boss Tracker - Chưa kết nối"
end)

close.MouseButton1Click:Connect(function()
    gui:Destroy()
end)
