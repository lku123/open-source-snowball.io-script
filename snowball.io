local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Snowball.Io Destroyer", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

_G.autoWin = true

function autoWin()
while _G.autoWin == true do
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-95.0702972, 16.4188232, -168.567963, 0, 0, 1, 0, 1, -0, -1, 0, 0)
wait()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0
end
end

_G.loopHit = true
function loopHit()
while _G. loopHit == true do

local plrs = game:GetService("Players")

for i, v in pairs(plrs:GetChildren()) do 

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("HitPlayer"):FireServer(Vector3.new(0.6106979846954346, 0, -0.7918636202812195), 1, 0.36651915311813354, v)
wait()
end
end
end


Tab:AddParagraph("Note","Created by LKU, if you're reading this, thanks for using the script!")

local Tab = Window:MakeTab({
	Name = "Features",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddParagraph("Recommendation","Recommended to use 1 feature at a time, Loop Hit while using No Cooldown Snow doesn't really do anything.")


OrionLib:MakeNotification({
	Name = "Enjoy!",
	Content = "Thanks for using my script, enjoy killing Snowball.Io!",
	Image = "rbxassetid://4483345998",
	Time = 5
})


Tab:AddButton({
	Name = "No Cooldown Snow Collection",
	Callback = function()
      		while wait() do

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CollectSnow"):FireServer()

end
  	end    
})

Tab:AddButton({
	Name = "Jumppower",
	Callback = function()
      		while wait() do

game.Players.LocalPlayer.Character.Humanoid.JumpPower = 75

end
  	end    
})

Tab:AddButton({
	Name = "Back to Lobby",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-95.0702972, 16.4188232, -168.567963, 0, 0, 1, 0, 1, -0, -1, 0, 0)

  	end    
})

Tab:AddToggle({
	Name = "Auto Win",
	Default = false,
	Callback = function(Value)
		print(Value)
        _G.autoWin = Value
        autoWin()
	end
})

Tab:AddToggle({
	Name = "Loop Hit All",
	Default = false,
	Callback = function(Value)
		print(Value)
_G.loopHit = Value
loopHit()
	end    
})

local Tab = Window:MakeTab({
	Name = "Extra",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Prints a random persons name and says their cool",
	Callback = function()
      		local Players = game:GetService("Players")

local playerList = Players:GetPlayers()

local randomPlayer = playerList[math.random(#playerList)]

print(randomPlayer.Name .. " is cool 😎")   
  	end    
})


OrionLib:Init()
