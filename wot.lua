getgenv().oilfarm = false
getgenv().bloodfarm = false
getgenv().mystfarm = false
getgenv().sorrowfarm = false
getgenv().nightfarm = false
getgenv().relicfarm = false
getgenv().killnight = false
getgenv().killcrazy = false
getgenv().clockfarm = false
getgenv().autocraft = false

local function fireproximityprompt(Obj, Amount, Skip)
    if Obj.ClassName == "ProximityPrompt" then 
        Amount = Amount or 1
        local PromptTime = Obj.HoldDuration
        if Skip then 
            Obj.HoldDuration = 0
        end
        for i = 1, Amount do 
            Obj:InputHoldBegin()
            if not Skip then 
                wait(Obj.HoldDuration)
            end
            Obj:InputHoldEnd()
        end
        Obj.HoldDuration = PromptTime
    else 
        error("userdata<ProximityPrompt> expected")
    end
end

function autoCraft()
    spawn(function()
		if getgenv().autocraft == true then
        for i,v in pairs(game:GetService("Workspace")["The J"].Forging:GetDescendants()) do
            if v.ClassName == "ProximityPrompt" then
                fireproximityprompt(v, 1, false)
				end
            end
        end
    end)
end

function easyTP(placeCFrame)
	local player = game.Players.LocalPlayer;
	if player.Character then
		player.Character.HumanoidRootPart.CFrame = placeCFrame
	end
end

function oilCup()
	spawn (function()
		while oilfarm == true do
			easyTP(game:GetService("Workspace").oil.real.Parent.Handle.CFrame)
				wait()
		end
	end)
end

function bloodCup()
	spawn (function()
		while bloodfarm == true do
			easyTP(game:GetService("Workspace").blood.delete.Parent.Handle.CFrame)
				wait()
		end
	end)
end

function mystCup()
	spawn (function()
		while mystfarm == true do
			easyTP(game:GetService("Workspace")["mysterious cup"]["play burning memory"].Parent.Handle.CFrame)
				wait()
		end
	end)
end

function nightEssence()
	spawn (function()
		while nightfarm == true do
			easyTP(game:GetService("Workspace")["nights essence"]["play burning memory"].Parent.Handle.CFrame)
				wait()
		end  
	end)
end

function sorrowCup()
	spawn (function()
		while sorrowfarm == true do
			easyTP(game:GetService("Workspace")["sorrow cup"]["play burning memory"].Parent.Handle.CFrame)
				wait()
		end
	end)
end

function t3Clock()
	spawn (function()
		while clockfarm == true do
			easyTP(game:GetService("Workspace")["T3's clock"].Handle.CFrame)
				wait()
		end
	end)
end

function tpForge()
    easyTP(game:GetService("Workspace")["The J"].Forging.anvil.Part.CFrame)
end

function tpNight()
	easyTP(game:GetService("Workspace")["The J"]["Night's anvil plate"].Part.CFrame)
end

function tpRiver()
	easyTP(game:GetService("Workspace")["The J"]["Red dimension"].HeartyFall.Red2.CFrame)
end

function tpUpgrade()
	easyTP(game:GetService("Workspace").upgrader.blood.a.CFrame)
end

function tradeCenter()
	easyTP(game:GetService("Workspace")["The J"]["Reworked_Trade_Center"].Teleport.CFrame)
end

function darkOrb()
	easyTP(game:GetService("Workspace")["The J"].OrbCrafter.Part.CFrame)
end

function uselessHole()
	easyTP(game:GetService("Workspace")["The J"]["The hole"].Part.CFrame)
end

function trader()
	easyTP(game:GetService("Workspace").gamebuildsthatdontchange["Red Tree"].RedTreePortal.CFrame)
end

function oilBase()
	easyTP(game:GetService("Workspace")["The J"]["Oil-manBase"].anvil.Part.CFrame)
end

function autokillNight()
	spawn(function()
		while getgenv().killnight == true do
			game:GetService("Workspace")["night crawler"].Humanoid.Health = 0
			wait(1)
		end
	end)
end

function autokillCrazy()
	spawn(function()
		while getgenv().killcrazy == true do
			game:GetService("Workspace")["crazy trollge"].Humanoid.Health = 0
			wait(1)
		end
	end)
end

function safeTP()
	easyTP(game:GetService("Workspace").kaboom.CFrame)
end

function autokillNight()
	spawn(function()
		while getgenv().killnight == true do
			game:GetService("Workspace")["night crawler"].Humanoid.Health = 0
			wait(1)
		end
	end)
end

function autokillCrazy()
	spawn(function()
		while getgenv().killcrazy == true do
			game:GetService("Workspace")["crazy trollge"].Humanoid.Health = 0
			wait(1)
		end
	end)
end


loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/rodus", true))() -- put this first above everything (important!)

CreateMain("World of Trollge Ov3rK1LL#1969") -- example main

CreateTab("Autos") -- example tab
CreateTab("Tps")
CreateTab("Lessen Lag")

CreateToggle(tabs['Autos'], "Autocraft (stand at the anvil of the cup)", "This button is toggleable!",function() -- example toggle
            getgenv().autocraft = toggled
        while toggled == true do
            autoCraft()
		wait(1)
	end
end)

CreateButton(tabs['Autos'],"Anti-Afk", "activates anti afk WOW", function()
	wait(0.5)local ba=Instance.new("ScreenGui")
	local ca=Instance.new("TextLabel")local da=Instance.new("Frame")
	local _b=Instance.new("TextLabel")local ab=Instance.new("TextLabel")ba.Parent=game.CoreGui
	ba.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;ca.Parent=ba;ca.Active=true
	ca.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ca.Draggable=true
	ca.Position=UDim2.new(0.698610067,0,0.098096624,0)ca.Size=UDim2.new(0,370,0,52)
	ca.Font=Enum.Font.SourceSansSemibold;ca.Text="Anti AFK Script"ca.TextColor3=Color3.new(0,1,1)
	ca.TextSize=22;da.Parent=ca
	da.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)da.Position=UDim2.new(0,0,1.0192306,0)
	da.Size=UDim2.new(0,370,0,107)_b.Parent=da
	_b.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)_b.Position=UDim2.new(0,0,0.800455689,0)
	_b.Size=UDim2.new(0,370,0,21)_b.Font=Enum.Font.Arial;_b.Text="made by ur mom "
	_b.TextColor3=Color3.new(0,1,1)_b.TextSize=20;ab.Parent=da
	ab.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ab.Position=UDim2.new(0,0,0.158377,0)
	ab.Size=UDim2.new(0,370,0,44)ab.Font=Enum.Font.ArialBold;ab.Text="Status: Active"
	ab.TextColor3=Color3.new(0,1,1)ab.TextSize=20;local bb=game:service'VirtualUser'
	game:service'Players'.LocalPlayer.Idled:connect(function()
	bb:CaptureController()bb:ClickButton2(Vector2.new())
	ab.Text="Roblox tried to kick u but i kicked him instead"wait(2)ab.Text="Status : Active"end)
end)

CreateToggle(tabs['Autos'], "Autofarm ALL", "This button is toggleable!",function() -- example toggle
            getgenv().oilfarm = toggled
			getgenv().bloodfarm = toggled
			getgenv().mystfarm = toggled
			getgenv().sorrowfarm = toggled
			getgenv().nightfarm = toggled
			getgenv().clockfarm = toggled
		while toggled == true do
		oilCup()
		wait(.1)
		bloodCup()
		wait(.1)
		mystCup()
		wait(.1)
		sorrowCup()
		wait(.1)
		nightEssence()
		wait(.1)
		t3Clock()
		safeTP()
	end
end)

CreateToggle(tabs['Autos'], "Autofarm Oil", "This button is toggleable!",function() -- example toggle
            getgenv().oilfarm = toggled
        while toggled == true do
            oilCup()
		wait(.3)
	end
end)

CreateToggle(tabs['Autos'], "Autofarm Blood", "This button is toggleable!",function() -- example toggle
            getgenv().bloodfarm = toggled
        while toggled == true do
            bloodCup()
		wait(.3)
	end
end)

CreateToggle(tabs['Autos'], "Autofarm Mysterious Cup", "This button is toggleable!",function() -- example toggle
            getgenv().mystfarm = toggled
        while toggled == true do
            mystCup()
		wait(.3)
	end
end)

CreateToggle(tabs['Autos'], "Autofarm Sorrow Cup", "This button is toggleable!",function() -- example toggle
            getgenv().sorrowfarm = toggled
        while toggled == true do
            sorrowCup()
		wait(.3)
	end
end)

CreateToggle(tabs['Autos'], "Autofarm Night Essence", "This button is toggleable!",function() -- example toggle
            getgenv().nightfarm = toggled
        while toggled == true do
            nightEssence()
		wait(.3)
	end
end)

CreateToggle(tabs['Autos'], "Autofarm T3 Clock", "This button is toggleable!",function() -- example toggle
            getgenv().clockfarm = toggled
        while toggled == true do
            t3Clock()
		wait(.3)
	end
end)

CreateToggle(tabs['Autos'],"Auto Kill Night Crawler", "This auto kills this boss", function()
        getgenv().killnight = toggled
        while toggled == true do
            autokillNight()
        wait(.1)
    end
end)

CreateToggle(tabs['Autos'],"Auto Kill Crazy Trollge", "This auto kills this boss", function()
        getgenv().killcrazy = toggled
        while toggled == true do
            autokillCrazy()
        wait(.1)
    end
end)

CreateButton(tabs['Tps'], "Forge", "This button is clickable!",function() -- example button
    tpForge()
end)

CreateButton(tabs['Tps'],"Heart River", "teleports to the hearty river", function()
	tpRiver()
end)

CreateButton(tabs['Tps'],"Upgrader", "teleports to the upgrader", function()
	tpUpgrade()
end)

CreateButton(tabs['Tps'],"Trade Center", "teleports to the trade center", function()
	tradeCenter()
end)

CreateButton(tabs['Tps'],"Dark Orb Creator", "teleports to the dark orb creator", function()
	darkOrb()
end)

CreateButton(tabs['Tps'],"Night Essence Creator", "teleports to the night essence creator", function()
	tpNight()
end)

CreateButton(tabs['Tps'],"Useless Hole", "teleports to the useless hole", function()
	uselessHole()
end)

CreateButton(tabs['Tps'],"Trader (Tree)", "teleports to the tree trader place", function()
	trader()
end)

CreateButton(tabs['Tps'],"Oil Man Base", "teleports to oil boy base omg", function()
	oilBase()
end)


CreateButton(tabs['Lessen Lag'],"Delete Trees", "hmm i wonder", function()
	local tree = game:GetService("Workspace")["The J"].Trees
	tree:ClearAllChildren()
end)
