getgenv().autofarm = nil
getgenv().custardFarm = nil
getgenv().brightFarm = nil
getgenv().depressionFarm = nil
getgenv().electroFarm = nil
getgenv().iceFarm = nil
getgenv().inkFarm = nil
getgenv().shadowFarm = nil
getgenv().voidFarm = nil
getgenv().starFarm = nil

function easyTP(placeCFrame)
	local player = game.Players.LocalPlayer;
	if player.Character then
		player.Character.HumanoidRootPart.CFrame = placeCFrame
	end
end

function collectAll()
    spawn(function()
        if getgenv().autofarm == true then
            for _,v in pairs(workspace:GetDescendants()) do
                if v:IsA("TouchTransmitter") then
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
                        wait()
                            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
                                wait()
                end
            end
        end
    end)
end

function autoCustard()
	spawn(function()
		while getgenv().custardFarm == true do
			for i, v in pairs(PathToFolder:GetChildren()) do
				if v:IsA("Part") then
				--v = every children inside the Folder(Thats a part), ex: v.CFrame for the CF
				end
			end
		end
	end)
end

function autoBright()
	spawn(function()
		while getgenv().brightFarm == true do
			easyTP(game:GetService("Workspace").Map.Spawn.Bright.Locations.spawnlocation.Bright.Handle.CFrame)
				wait()
		end
	end)
end

function autoDepression()
	spawn(function()
		while getgenv().depressionFarm == true do
			easyTP(game:GetService("Workspace").Map.Spawn.Depression.Locations.spawnlocation.Depression.Handle.CFrame)
				wait()
		end
	end)
end

function autoElectro()
	spawn(function()
		while getgenv().electroFarm == true do
			easyTP(game:GetService("Workspace").Map.Spawn.Electro.Locations.spawnlocation.Electro.Handle.CFrame)
				wait()
		end
	end)
end

function autoIce()
	spawn(function()
		while getgenv().iceFarm == true do
			easyTP(game:GetService("Workspace").Map.Spawn.Ice.Locations.spawnlocation.Ice.Handle.CFrame)
				wait()
		end
	end)
end

function autoInk()
	spawn(function()
		while getgenv().inkFarm == true do
			easyTP(game:GetService("Workspace").Map.Spawn.Ink.Locations.spawnlocation.Ink.Handle.CFrame)
				wait()
		end
	end)
end

function autoShadow()
	spawn(function()
		while getgenv().shadowFarm == true do
			easyTP(game:GetService("Workspace").Map.Spawn.Shadow.Locations.spawnlocation.Shadow.Handle.CFrame)
				wait()
		end
	end)
end

function autoVoid()
	spawn(function()
		while getgenv().voidFarm == true do
			easyTP(game:GetService("Workspace").Map.Spawn.Void.Locations.spawnlocation.Void.Handle.CFrame)
				wait()
		end
	end)
end

function autoStar()
	spawn(function()
		while getgenv().starFarm == true do
			easyTP(game:GetService("Workspace").Map.Star.Custard.Locations.spawnlocation.Star.Handle.CFrame)
				wait()
		end
	end)
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/rodus", true))() -- put this first above everything (important!)

CreateMain("MTI Ov3rK1LL#1969") -- example main

CreateTab("Autos") -- example tab

CreateToggle(tabs['Autos'], "Autofarm Everything", "This button is toggleable!",function() -- example toggle
	getgenv().autofarm = toggled
		while toggled == true do
			collectAll()
				wait(.1)
	end
end)
