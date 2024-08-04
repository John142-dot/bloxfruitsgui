local smoll = loadstring(game:HttpGet(https://raw.githubusercontent.com/John142-dot/randomuisourcewarezhubv-/main/UIware.lua''))()
local idk = smoll.SetupUI({
    Title = "Z⚡ Hub bloxfruit gui"
})

local againidk = idk.CreateTabs({
    Text = "Main"
})

-- Create Toggle
againidk.CreateToggle({
    Text = "Toggle (will have purpose next upd)",
    Callback = function(a)
        print("hello, world!")
    end,
})

-- Create Slider
againidk.CreateSlider({
    Text = "Speed",
    Minimum = 0,
    Maximum = 90,
    Default = 1,
    Precise = true,
    Callback = function(a)
        print("Speed set to: " .. a)
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character.Humanoid.WalkSpeed = a
        end
    end,
})

-- Create Z Script Button
againidk.CreateButtons({
    Text = "Z script (not compatible for mobile)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/John142-dot/zonkeysbasement/main/bloxfruitgui.lua"))()
        
        local Players = game:GetService("Players")
        local StarterGui = game:GetService("StarterGui")

        StarterGui:SetCore("SendNotification", {
            Title = "Notification Title";
            Text = "This is the notification text.";
            Duration = 5;  -- Duration in seconds
        })
    end,
})

-- Create Inf Energy Button
againidk.CreateButtons({
    Text = "Enable Inf Energy",
    Callback = function()
        local function blockDodgeCall()
            local mt = getrawmetatable(game:GetService("ReplicatedStorage").Remotes.CommE)
            local oldNamecall = mt.__namecall

            setreadonly(mt, false)

            mt.__namecall = newcclosure(function(self, ...)
                local method = getnamecallmethod()
                local args = {...}
                
                if self == game:GetService("ReplicatedStorage").Remotes.CommE and method == "FireServer" and args[1] == "Dodge" then
                    warn("Blocked Dodge remote with args:", args[1], args[3], args[4], args[5])
                    return
                end
                
                return oldNamecall(self, ...)
            end)

            setreadonly(mt, true)
        end

        local function blockDoubleJumpCall()
            local remote = game:GetService("ReplicatedStorage").Remotes.CommE

            local mt = getrawmetatable(remote)
            local originalNamecall = mt.__namecall

            setreadonly(mt, false)

            mt.__namecall = newcclosure(function(self, ...)
                local args = {...}
                if getnamecallmethod() == "FireServer" and args[1] == "DoubleJump" then
                    warn("Blocked Jump remote call")
                    return
                end
                return originalNamecall(self, ...)
            end)

            setreadonly(mt, true)
        end

        blockDodgeCall()
        blockDoubleJumpCall()
        print("Inf Energy enabled")
    end
})

-- Create Teleport Buttons
againidk.CreateButtons({
    Text = "Pirate Island",
    Callback = function()
        local tweenService = game:GetService("TweenService")
        local tweenInfo = TweenInfo.new(45, Enum.EasingStyle.Linear)
        tweenService:Create(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(1041.886, 16.274, 1424.937)}):Play()
    end
})

againidk.CreateButtons({
    Text = "Marine Island",
    Callback = function()
        local tweenService = game:GetService("TweenService")
        local tweenInfo = TweenInfo.new(45, Enum.EasingStyle.Linear)
        tweenService:Create(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-2896.687, 41.489, 2009.275)}):Play()
    end
})

againidk.CreateButtons({
    Text = "Colosseum",
    Callback = function()
        local tweenService = game:GetService("TweenService")
        local tweenInfo = TweenInfo.new(45, Enum.EasingStyle.Linear)
        tweenService:Create(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-1541.088, 7.389, -2987.406)}):Play()
    end
})

againidk.CreateButtons({
    Text = "Desert",
    Callback = function()
        local tweenService = game:GetService("TweenService")
        local tweenInfo = TweenInfo.new(45, Enum.EasingStyle.Linear)
        tweenService:Create(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(1094.321, 6.570, 4231.636)}):Play()
    end
})

againidk.CreateButtons({
    Text = "Fountain City",
    Callback = function()
        local tweenService = game:GetService("TweenService")
        local tweenInfo = TweenInfo.new(45, Enum.EasingStyle.Linear)
        tweenService:Create(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(5529.724, 429.357, 4245.550)}):Play()
    end
})

againidk.CreateButtons({
    Text = "Jungle",
    Callback = function()
        local tweenService = game:GetService("TweenService")
        local tweenInfo = TweenInfo.new(45, Enum.EasingStyle.Linear)
        tweenService:Create(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-1615.188, 36.852, 150.805)}):Play()
    end
})

againidk.CreateButtons({
    Text = "Marine Fort",
    Callback = function()
        local tweenService = game:GetService("TweenService")
        local tweenInfo = TweenInfo.new(45, Enum.EasingStyle.Linear)
        tweenService:Create(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-4846.150, 20.652, 4393.651)}):Play()
    end
})

againidk.CreateButtons({
    Text = "Middle Town",
    Callback = function()
        local tweenService = game:GetService("TweenService")
        local tweenInfo = TweenInfo.new(45, Enum.EasingStyle.Linear)
        tweenService:Create(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-705.998, 7.852, 1547.522)}):Play()
    end
})

againidk.CreateButtons({
    Text = "Prison",
    Callback = function()
        local tweenService = game:GetService("TweenService")
        local tweenInfo = TweenInfo.new(45, Enum.EasingStyle.Linear)
        tweenService:Create(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(4841.844, 5.652, 741.330)}):Play()
    end
})

againidk.CreateButtons({
    Text = "Pirate Village",
    Callback = function()
        local tweenService = game:GetService("TweenService")
        local tweenInfo = TweenInfo.new(45, Enum.EasingStyle.Linear)
        tweenService:Create(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-1146.429, 4.752, 3818.503)}):Play()
    end
})

againidk.CreateButtons({
    Text = "Sky 1",
    Callback = function()
        local tweenService = game:GetService("TweenService")
        local tweenInfo = TweenInfo.new(45, Enum.EasingStyle.Linear)
        tweenService:Create(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-4967.837, 717.672, -2623.843)}):Play()
    end
})

againidk.CreateButtons({
    Text = "Sky 2",
    Callback = function()
        local tweenService = game:GetService("TweenService")
        local tweenInfo = TweenInfo.new(45, Enum.EasingStyle.Linear)
        tweenService:Create(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-7876.077, 5545.582, -381.199)}):Play()
    end
})

againidk.CreateButtons({
    Text = "Snow",
    Callback = function()
        local tweenService = game:GetService("TweenService")
        local tweenInfo = TweenInfo.new(45, Enum.EasingStyle.Linear)
        tweenService:Create(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(1100.361, 5.291, -1151.542)}):Play()
    end
})

againidk.CreateButtons({
    Text = "Under Water",
    Callback = function()
        local tweenService = game:GetService("TweenService")
        local tweenInfo = TweenInfo.new(45, Enum.EasingStyle.Linear)
        tweenService:Create(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(61135.293, 18.472, 1597.683)}):Play()
    end
})

againidk.CreateButtons({
    Text = "Magma Village",
    Callback = function()
        local tweenService = game:GetService("TweenService")
        local tweenInfo = TweenInfo.new(45, Enum.EasingStyle.Linear)
        tweenService:Create(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-5248.272, 8.699, 8452.891)}):Play()
    end
})

againidk.CreateButtons({
    Text = "New Island",
    Callback = function()
        local tweenService = game:GetService("TweenService")
        local tweenInfo = TweenInfo.new(45, Enum.EasingStyle.Linear)
        tweenService:Create(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(3000, 100, 4000)}):Play()
    end
})

againidk.CreateButtons({
    Text = "Secret Cave",
    Callback = function()
        local tweenService = game:GetService("TweenService")
        local tweenInfo = TweenInfo.new(45, Enum.EasingStyle.Linear)
        tweenService:Create(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(2500, -50, 5000)}):Play()
    end
})

againidk.CreateButtons({
    Text = "High Peak",
    Callback = function()
        local tweenService = game:GetService("TweenService")
        local tweenInfo = TweenInfo.new(45, Enum.EasingStyle.Linear)
        tweenService:Create(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(6000, 800, 7000)}):Play()
    end
})
