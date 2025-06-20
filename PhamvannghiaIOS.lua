--// PHẠM NGHĨA IOS - SCRIPT RIÊNG BIỆT
--// Menu Toggle bằng logo Obito

-- GUI Bật / Tắt
local ScreenGui = Instance.new("ScreenGui")
local ToggleButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game.CoreGui
ToggleButton.Parent = ScreenGui
ToggleButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ToggleButton.Position = UDim2.new(0.02, 0, 0.2, 0)
ToggleButton.Size = UDim2.new(0, 45, 0, 45)
ToggleButton.Image = "rbxassetid://13928420334" -- Logo Obito
ToggleButton.Draggable = true
UICorner.CornerRadius = UDim.new(1, 10)
UICorner.Parent = ToggleButton

ToggleButton.MouseButton1Click:Connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.End, false, game)
end)

-- Giao diện chính
repeat wait() until game:IsLoaded()
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Phạm Nghĩa 🍏 IOS",
    SubTitle = "Script riêng mạnh mẽ",
    TabWidth = 140,
    Size = UDim2.fromOffset(520, 360),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.End
})

local Tabs = {
    Info = Window:AddTab({ Title = "Thông Tin" }),
    Farm = Window:AddTab({ Title = "Auto Farm" }),
    Boss = Window:AddTab({ Title = "Boss" }),
    Sea = Window:AddTab({ Title = "Di Chuyển Sea" }),
    Fruit = Window:AddTab({ Title = "Trái Ác Quỷ" }),
    PvP = Window:AddTab({ Title = "PvP / ESP" }),
    Settings = Window:AddTab({ Title = "Cài Đặt" })
}

Tabs.Info:AddParagraph({
    Title = "Tác giả",
    Content = "Tên Hub: Phạm Nghĩa IOS
Người làm: ChatGPT hỗ trợ riêng cho Nghĩa
Tiktok: @evening01240"
})

Tabs.Farm:AddButton({
    Title = "Bật Auto Farm",
    Description = "Tự động farm quái theo cấp",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/scriptpastebin/raw/main/BF_Mobile"))()
    end
})

Tabs.Boss:AddButton({
    Title = "Tự động đánh Boss",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Scripts/main/BossFarm.lua"))()
    end
})

Tabs.Sea:AddButton({
    Title = "Dịch chuyển Sea 1",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end
})
Tabs.Sea:AddButton({
    Title = "Dịch chuyển Sea 2",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelSecond")
    end
})
Tabs.Sea:AddButton({
    Title = "Dịch chuyển Sea 3",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelThird")
    end
})

Tabs.Fruit:AddButton({
    Title = "Auto Tìm + Ăn Trái",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/scriptpastebin/raw/main/fruit"))()
    end
})

Tabs.PvP:AddButton({
    Title = "ESP Người Chơi",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/esp/main/bf"))()
    end
})

Tabs.Settings:AddButton({
    Title = "Fix Lag Mobile",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/main/FixLag.lua"))()
    end
})
