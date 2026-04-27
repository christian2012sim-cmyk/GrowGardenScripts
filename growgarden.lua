-- Grow a Garden – Token Menu
-- Creates a UI with a button that gives 10,000 tokens

-- UI Setup
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Button = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Frame.Size = UDim2.new(0, 200, 0, 120)
Frame.Position = UDim2.new(0.05, 0, 0.2, 0)
Frame.BorderSizePixel = 0

Button.Parent = Frame
Button.Size = UDim2.new(1, -20, 0, 50)
Button.Position = UDim2.new(0, 10, 0, 35)
Button.BackgroundColor3 = Color3.fromRGB(60, 180, 75)
Button.Text = "Give 10000 Tokens"
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.Font = Enum.Font.GothamBold
Button.TextSize = 18

-- Function to give tokens
local function GiveTokens()
    local player = game.Players.LocalPlayer

    -- FIND the token value
    local tokenValue = nil
    for _, v in pairs(player:GetDescendants()) do
        if string.lower(v.Name) == "tokens" and v:IsA("NumberValue") then
            tokenValue = v
            break
        end
    end

    if tokenValue then
        tokenValue.Value = 10000
        print("✔ Tokens set to 10,000")
    else
        print("❌ Could not find token value")
    end
end

-- Button click
Button.MouseButton1Click:Connect(GiveTokens)
