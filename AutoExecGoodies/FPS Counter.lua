if fpscounter == true then
	error("yo bro stop exec",0)
	return
end
 
pcall(function() getgenv().fpscounter  = true end)
-- Instances:
local Frame = Instance.new("ImageLabel")
local IconButton = Instance.new("ImageButton")
local TextLabel = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
 
--Properties:
Frame.Parent = game:WaitForChild("CoreGui"):WaitForChild("TopBar").TopBarFrame.RightFrame
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0, 0, 0, 0)
Frame.Size = UDim2.new(0, 40, 0, 25)
 
IconButton.Name = "IconButton"
IconButton.Parent = Frame
IconButton.BackgroundTransparency = 1.000
IconButton.BorderSizePixel = 0
IconButton.Size = UDim2.new(1, 0, 1, 0)
IconButton.ZIndex = 2
IconButton.Image = "http://www.roblox.com/asset/?id=5540166883"
IconButton.ImageColor3 = Color3.fromRGB(0, 0, 0)
IconButton.ImageTransparency = 0.500
IconButton.ScaleType = Enum.ScaleType.Crop
 
TextLabel.Parent = IconButton
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel.Position = UDim2.new(-0.00249999994, 0, -0.0161767583, 0)
TextLabel.Size = UDim2.new(0, 40, 0, 25)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = ""
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
TextLabel.ZIndex = 2
 
UICorner.CornerRadius = UDim.new(0.25, 0)
UICorner.Parent = IconButton
-- Script:
while true do
	wait(0.1)
	TextLabel.Text = (math.floor(workspace:GetRealPhysicsFPS()))
end
 