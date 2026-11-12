-- ==========================================
-- SCRIPT: AX (UI Only - Clean Template)
-- ==========================================

-- Load UI Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/x2zu/OPEN-SOURCE-UI-ROBLOX/refs/heads/main/X2ZU%20UI%20ROBLOX%20OPEN%20SOURCE/DummyUi-leak-by-x2zu/fetching-main/Tools/Framework.luau"))()

-- Create Main Window
local Window = Library:Window({
    Title = "AX [ Hub ]",
    Desc = "AX on top",
    Icon = 105059922903197,
    Theme = "Dark",
    Config = {
        Keybind = Enum.KeyCode.LeftControl,
        Size = UDim2.new(0, 500, 0, 400)
    },
    CloseUIButton = {
        Enabled = true,
        Text = "AX"
    }
})

-- Sidebar Vertical Separator
local SidebarLine = Instance.new("Frame")
SidebarLine.Size = UDim2.new(0, 1, 1, 0)
SidebarLine.Position = UDim2.new(0, 140, 0, 0)
SidebarLine.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
SidebarLine.BorderSizePixel = 0
SidebarLine.ZIndex = 5
SidebarLine.Name = "SidebarLine"
SidebarLine.Parent = game:GetService("CoreGui")

-- Main Tab
local Tab = Window:Tab({Title = "Main", Icon = "star"}) do
    Tab:Section({Title = "Main Section"})
end

Window:Line()

-- Settings Tab
local Settings = Window:Tab({Title = "Settings", Icon = "wrench"}) do
    Settings:Section({Title = "Configuration"})
    Settings:Button({
        Title = "Unload UI",
        Desc = "Close and destroy menu",
        Callback = function()
            if SidebarLine then SidebarLine:Destroy() end
        end
    })
end
