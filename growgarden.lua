local player = game.Players.LocalPlayer

local gui = Instance.new("ScreenGui", game.CoreGui)
local button = Instance.new("TextButton", gui)

button.Size = UDim2.new(0, 180, 0, 50)
button.Position = UDim2.new(0.05, 0, 0.2, 0)
button.BackgroundColor3 = Color3.fromRGB(60, 180, 75)
button.Text = "Give 10000 Tokens"
button.TextColor3 = Color3.new(1, 1, 1)
button.Font = Enum.Font.GothamBold
button.TextSize = 18

local function giveTokens()
    local tokenValue
    for _, v in ipairs(player:GetDescendants()) do
        if v:IsA("ValueBase") and string.lower(v.Name) == "tokens" then
            tokenValue = v
            break
        end
    end
    if tokenValue then
        tokenValue.Value = 10000
    end
end

button.MouseButton1Click:Connect(giveTokens)
