_G.Main = {}

function _G.Main:New(Title)
	
	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local Frame_2 = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local TextLabel = Instance.new("TextLabel")

	ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	ScreenGui.ResetOnSpawn = false

	Frame.Parent = ScreenGui
	Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	Frame.Position = UDim2.new(0.05382213, 0, 0.274487466, 0)
	Frame.Size = UDim2.new(0, 397, 0, 395)

	Frame_2.Parent = Frame
	Frame_2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Frame_2.BorderSizePixel = 0
	Frame_2.Position = UDim2.new(0.0624024495, 0, 0.145615742, 0)
	Frame_2.Size = UDim2.new(0, 347, 0, 298)

	UIListLayout.Parent = Frame_2
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 10)

	TextLabel.Parent = Frame
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.LayoutOrder = 5
	TextLabel.Position = UDim2.new(0.152442604, 0, 0.0205405708, 0)
	TextLabel.Size = UDim2.new(0, 274, 0, 40)
	TextLabel.ZIndex = 2
	TextLabel.Font = Enum.Font.GothamBold
	TextLabel.Text = Title
	TextLabel.TextColor3 = Color3.fromRGB(232, 232, 232)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true

	local function MVMBOL_fake_script()
		local script = Instance.new('LocalScript', Frame)

		script.Parent.Active = true
		script.Parent.Draggable = true
	end
	coroutine.wrap(MVMBOL_fake_script)()
	
	_G.Frame = {}
	
	function _G.Frame:Button(Name,Call)
		
		local TextButton = Instance.new("TextButton")
		
		TextButton.Parent = Frame_2
		TextButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
		TextButton.BorderSizePixel = 0
		TextButton.Size = UDim2.new(0, 200, 0, 50)
		TextButton.Font = Enum.Font.SourceSansBold
		TextButton.Text = Name
		TextButton.TextColor3 = Color3.fromRGB(235, 235, 235)
		TextButton.TextScaled = true
		TextButton.TextSize = 14.000
		TextButton.TextWrapped = true
		
		TextButton.MouseButton1Click:Connect(function()
			
			pcall(Call)
			
		end)
		
	end
	
	return _G.Frame
	
end

--Script Here

--End

return _G.Main