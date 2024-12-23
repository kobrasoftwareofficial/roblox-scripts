if not game:IsLoaded() then
	game.Loaded:Wait()
end

local CartRideGUI = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TopBar = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local ToggleMode = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local UICorner_3 = Instance.new("UICorner")
local CartSpamToggle = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local StartCarts = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local StopCarts = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")

local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")

if getgenv().crguiLoaded then
	StarterGui:SetCore("SendNotification", {
		Title = "Cart Ride GUI",
		Text = "The GUI has already been loaded!",
		Duration = 3,
		Button1 = "OK",
	});
	return;
end

getgenv().crguiLoaded = true;

if not fireclickdetector then
	StarterGui:SetCore("SendNotification", {
		Title = "Executor Unsupported",
		Text = "Your executor is missing the required functions!",
		Duration = 3,
		Button1 = "OK",
	});
end

CartRideGUI.Name = "CartRideGUI"
CartRideGUI.Parent = game.CoreGui

Frame.Parent = CartRideGUI
Frame.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.46947369, 0, 0.403979242, 0)
Frame.Size = UDim2.new(0, 173, 0, 179)

TopBar.Name = "TopBar"
TopBar.Parent = Frame
TopBar.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
TopBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
TopBar.BorderSizePixel = 0
TopBar.Position = UDim2.new(0.00126586214, 0, -0.00142607815, 0)
TopBar.Size = UDim2.new(0, 173, 0, 25)

Title.Name = "Title"
Title.Parent = TopBar
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 148, 0, 25)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Cart Ride GUI"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 21.000
Title.TextWrapped = true

Close.Name = "Close"
Close.Parent = TopBar
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1.000
Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.85549134, 0, 0, 0)
Close.Size = UDim2.new(0, 25, 0, 25)
Close.Font = Enum.Font.SourceSansBold
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextSize = 14.000

UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = TopBar

ToggleMode.Name = "ToggleMode"
ToggleMode.Parent = Frame
ToggleMode.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
ToggleMode.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToggleMode.BorderSizePixel = 0
ToggleMode.Position = UDim2.new(0.0578034669, 0, 0.176411375, 0)
ToggleMode.Size = UDim2.new(0, 153, 0, 29)
ToggleMode.Font = Enum.Font.SourceSansBold
ToggleMode.Text = "Mode: Forward"
ToggleMode.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleMode.TextSize = 18.000

UICorner_2.CornerRadius = UDim.new(1, 0)
UICorner_2.Parent = ToggleMode

UICorner_3.CornerRadius = UDim.new(0.100000001, 0)
UICorner_3.Parent = Frame

CartSpamToggle.Name = "CartSpamToggle"
CartSpamToggle.Parent = Frame
CartSpamToggle.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
CartSpamToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
CartSpamToggle.BorderSizePixel = 0
CartSpamToggle.Position = UDim2.new(0.0578034669, 0, 0.79936856, 0)
CartSpamToggle.Size = UDim2.new(0, 153, 0, 29)
CartSpamToggle.Font = Enum.Font.SourceSansBold
CartSpamToggle.Text = "Enable Cart Spam (K)"
CartSpamToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
CartSpamToggle.TextSize = 16.000

UICorner_4.CornerRadius = UDim.new(1, 0)
UICorner_4.Parent = CartSpamToggle

StartCarts.Name = "StartCarts"
StartCarts.Parent = Frame
StartCarts.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
StartCarts.BorderColor3 = Color3.fromRGB(0, 0, 0)
StartCarts.BorderSizePixel = 0
StartCarts.Position = UDim2.new(0.0578034669, 0, 0.376418471, 0)
StartCarts.Size = UDim2.new(0, 153, 0, 29)
StartCarts.Font = Enum.Font.SourceSansBold
StartCarts.Text = "Start All Carts (G)"
StartCarts.TextColor3 = Color3.fromRGB(255, 255, 255)
StartCarts.TextSize = 18.000

UICorner_5.CornerRadius = UDim.new(1, 0)
UICorner_5.Parent = StartCarts

StopCarts.Name = "StopCarts"
StopCarts.Parent = Frame
StopCarts.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
StopCarts.BorderColor3 = Color3.fromRGB(0, 0, 0)
StopCarts.BorderSizePixel = 0
StopCarts.Position = UDim2.new(0.0578034669, 0, 0.574551523, 0)
StopCarts.Size = UDim2.new(0, 153, 0, 29)
StopCarts.Font = Enum.Font.SourceSansBold
StopCarts.Text = "Stop All Carts (H)"
StopCarts.TextColor3 = Color3.fromRGB(255, 255, 255)
StopCarts.TextSize = 18.000

UICorner_6.CornerRadius = UDim.new(1, 0)
UICorner_6.Parent = StopCarts

-- Scripts:

getgenv().cartForward = true;
getgenv().spamEnabled = false;

local function HBVRLE_fake_script() -- Close.CloseScript 
	local script = Instance.new('LocalScript', Close)

	local button = script.Parent
	local frame = button.Parent.Parent
	
	button.MouseButton1Down:Connect(function()
		frame.Visible = false
		StarterGui:SetCore("SendNotification", {
			Title = "GUI Closed",
			Text = "Press V to re-open.",
			Duration = 3,
			Button1 = "OK",
		});
	end)
end
coroutine.wrap(HBVRLE_fake_script)()
local function SIXXC_fake_script() -- TopBar.DragScript 
	local script = Instance.new('LocalScript', TopBar)
	
	local gui = script.Parent.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(SIXXC_fake_script)()
local function TABI_fake_script() -- ToggleMode.ToggleScript 
	local script = Instance.new('LocalScript', ToggleMode)
	
	ToggleMode.MouseButton1Down:Connect(function()
		getgenv().cartForward = not getgenv().cartForward;
		if getgenv().cartForward then
			ToggleMode.Text = "Mode: Forward";
		else
			ToggleMode.Text = "Mode: Backward";
		end
	end)
end
coroutine.wrap(TABI_fake_script)()
local function RMVUE_fake_script() -- CartSpamToggle.SpamScript 
	local script = Instance.new('LocalScript', CartSpamToggle)
	
	CartSpamToggle.MouseButton1Down:Connect(function()
		getgenv().spamEnabled = not getgenv().spamEnabled;
		if getgenv().spamEnabled then
			CartSpamToggle.Text = "Enable Cart Spam (K)";
		else
			CartSpamToggle.Text = "Disable Cart Spam (K)";
		end
	end)
end
coroutine.wrap(RMVUE_fake_script)()
local function VNQHT_fake_script() -- StartCarts.StartScript 
	local script = Instance.new('LocalScript', StartCarts)
	
	StartCarts.MouseButton1Down:Connect(function()
		for i, part in workspace:GetDescendants() do
			if part:IsA("BasePart") and part.Name == "On" and part.Color == Color3.fromRGB(196, 40, 28) and part:FindFirstChildWhichIsA("ClickDetector") then
				fireclickdetector(part:FindFirstChildWhichIsA("ClickDetector"));
			end
		end
	end)
end
coroutine.wrap(VNQHT_fake_script)()
local function GTBOCA_fake_script() -- StopCarts.StopScript 
	local script = Instance.new('LocalScript', StopCarts)
	
	StopCarts.MouseButton1Down:Connect(function()
		for i, part in workspace:GetDescendants() do
			if part:IsA("BasePart") and part.Name == "On" and part.Color == Color3.fromRGB(40, 127, 71) and part:FindFirstChildWhichIsA("ClickDetector") then
				fireclickdetector(part:FindFirstChildWhichIsA("ClickDetector"));
			end
		end
	end)
end
coroutine.wrap(GTBOCA_fake_script)()

UserInputService.InputBegan:Connect(function(k)
	if k.KeyCode == Enum.KeyCode.G then
		for i, part in workspace:GetDescendants() do
			if part.Name == "On" and part.Color == Color3.fromRGB(196, 40, 28) and part:FindFirstChildWhichIsA("ClickDetector") then
				fireclickdetector(part:FindFirstChildWhichIsA("ClickDetector"));
			end
		end
	end
	
	if k.KeyCode == Enum.KeyCode.H then
		for i, part in workspace:GetDescendants() do
			if part:IsA("BasePart") and part.Name == "On" and part.Color == Color3.fromRGB(40, 127, 71) and part:FindFirstChildWhichIsA("ClickDetector") then
				fireclickdetector(part:FindFirstChildWhichIsA("ClickDetector"));
			end
		end
	end
	
	if k.KeyCode == Enum.KeyCode.K then
		getgenv().spamEnabled = not getgenv().spamEnabled;
		if not getgenv().spamEnabled then
			CartSpamToggle.Text = "Enable Cart Spam (K)";
		else
			CartSpamToggle.Text = "Disable Cart Spam (K)";
		end
	end
	
	if k.KeyCode == Enum.KeyCode.V then
		Frame.Visible = not Frame.Visible
	end
end)

RunService.Heartbeat:Connect(function()
	if getgenv().spamEnabled then
		for i, part in workspace:GetDescendants() do
			if part:IsA("BasePart") and (part.Name == "Up" and getgenv().cartForward) or (part.Name == "Down" and not getgenv().cartForward) then
				fireclickdetector(part:FindFirstChildWhichIsA("ClickDetector"));
			end
		end
	end
end)
