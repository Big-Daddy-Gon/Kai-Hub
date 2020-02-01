--Library
spawn(function()
    for i,v in pairs(game.CoreGui:GetDescendants()) do
        if v.Name == "ScreenGui" and v:FindFirstChild("Container") then
            v:Destroy()
        end
    end
end)
wait(0.1)
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/h4ckerg0d/Wally-Ui-Lib-V2/master/Wally%20Ui%20V2%20Main", true))()
library.options.underlinecolor = "rainbow"
local Main = library:CreateWindow("Main")
--Library

--Functions
function AutoEquip()
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then 
            v.Parent = game.Players.LocalPlayer.Character
        end
    end 
end

function AutoSwing()
    local number_1 = 1;
    local Target = game:GetService("ReplicatedStorage").Swing;
    Target:FireServer(number_1);
end

function AutoSell()
    pcall(function()
        for i,v in pairs(game:GetService("Workspace").Points:GetChildren()) do
            if v.Name == "Sell" and v:FindFirstChild("TouchInterest") then 
                v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(math.random(0,5),0,0)
            end
        end
    end)
end

function AutoRank()
    local string_1 = "Rank";
    local Target = game:GetService("ReplicatedStorage").Buy;
    Target:FireServer(string_1);
end 

function AutoSword()
    local string_1 = "Sword";
    local Target = game:GetService("ReplicatedStorage").Buy;
    Target:FireServer(string_1);
end

function AutoArmor()
    local string_1 = "Armor";
    local Target = game:GetService("ReplicatedStorage").Buy;
    Target:FireServer(string_1);
end

function AutoEverything()
    AutoRank()
    AutoSword()
    AutoArmor()
    AutoSell()
    AutoSwing()
    AutoEquip()
end
--Fucntions

--Variables
_G.AutoEquip = nil
_G.AutoSwing = nil
_G.AutoSell = nil
_G.AutoRank = nil
_G.AutoSword = nil
_G.AutoArmor = nil
_G.AutoEverything = nil
--Variables

--Script
local AutoEquip = Main:Toggle("AutoEquip", {flag = "Equip"}, function(State)
    _G.AutoEquip = State 
    while _G.AutoEquip and wait() do
        AutoEquip()
    end
end)

local AutoSwing = Main:Toggle("AutoSwing", {flag = "Swing"}, function(State)
    _G.AutoSwing = State
    while _G.AutoSwing and wait() do
        AutoSwing()
    end
end)

local AutoSell = Main:Toggle("AutoSell", {flag = "Sell"}, function(State)
    _G.AutoSell = State
    while _G.AutoSell and wait() do
        AutoSell()
    end
end)

local AutoRank = Main:Toggle("AutoRank", {flag = "Rank"}, function(State)
    _G.AutoRank = State
    while _G.AutoRank and wait() do
        AutoRank()
    end
end)

local AutoSword = Main:Toggle("AutoSword", {flag = "Sword"}, function(State)
    _G.AutoSword = State
    while _G.AutoSword and wait() do
        AutoSword()
    end
end)

local AutoArmor = Main:Toggle("AutoArmor", {flag = "Armor"}, function(State)
    _G.AutoArmor = State
    while _G.AutoArmor and wait() do
        AutoArmor()
    end
end)

local AutoEvrything = Main:Toggle("AutoEverything", {flag = "Everything"}, function(State)
    _G.AutoEverything = State
    while _G.AutoEverything and wait() do
        AutoEverything()
    end
end)
