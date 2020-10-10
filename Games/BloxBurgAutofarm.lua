repeat
	wait()
until game:IsLoaded()

local library = {}

local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local player = game:GetService("Players").LocalPlayer
local Mouse = player:GetMouse()

local function tweenObject(object, data, time)
	local tweenInfo = TweenInfo.new(time, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
	local tween = TweenService:Create(object, tweenInfo, data)
	tween:Play()
	return tween
end

function library:Window(TitleWhite, TitleBlue)
	if game:GetService("CoreGui"):FindFirstChild("BloxburgUi") then
		game:GetService("CoreGui"):FindFirstChild("BloxburgUi"):Destroy()
	end
	local BloxburgUi = Instance.new("ScreenGui")
	local MainUIFrame = Instance.new("ImageLabel")
	local Cool = Instance.new("ImageLabel")
	local BloxburgCool = Instance.new("Frame")
	local TabsHolder = Instance.new("ImageLabel")
	local UIListLayout = Instance.new("UIListLayout")
	local UIPadding = Instance.new("UIPadding")
	local BloxburgTitle1 = Instance.new("Frame")
	local BloxburgTitle = Instance.new("TextLabel")
	local BloxburgHubTitle = Instance.new("TextLabel")
	BloxburgUi.Name = "BloxburgUi"
	BloxburgUi.Parent = game:GetService("CoreGui")
	BloxburgUi.DisplayOrder = 1
	MainUIFrame.Name = "MainUIFrame"
	MainUIFrame.Parent = BloxburgUi
	MainUIFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MainUIFrame.BackgroundTransparency = 1.000
	MainUIFrame.Position = UDim2.new(0.252025217, 0, 0.226720661, 0)
	MainUIFrame.Size = UDim2.new(0, 551, 0, 404)
	MainUIFrame.Image = "rbxassetid://3570695787"
	MainUIFrame.ImageColor3 = Color3.fromRGB(22, 22, 22)
	MainUIFrame.ScaleType = Enum.ScaleType.Slice
	MainUIFrame.SliceCenter = Rect.new(100, 100, 100, 100)
	MainUIFrame.SliceScale = 0.050
	Cool.Name = "Cool"
	Cool.Parent = MainUIFrame
	Cool.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Cool.BackgroundTransparency = 1.000
	Cool.Position = UDim2.new(0.06, 0, 0.04, 0)
	Cool.Size = UDim2.new(0, 65, 0, 65)
	Cool.ZIndex = 2
	Cool.Image = "rbxassetid://166652117"
	BloxburgCool.Name = "BloxburgCool"
	BloxburgCool.Parent = MainUIFrame
	BloxburgCool.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	BloxburgCool.BorderSizePixel = 0
	BloxburgCool.Size = UDim2.new(0, 125, 0, 97)
	TabsHolder.Name = "TabsHolder"
	TabsHolder.Parent = MainUIFrame
	TabsHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabsHolder.BackgroundTransparency = 1.000
	TabsHolder.Position = UDim2.new(0, 0, 0.240099013, 0)
	TabsHolder.Size = UDim2.new(0, 125, 0, 307)
	TabsHolder.Image = "rbxassetid://3570695787"
	TabsHolder.ImageColor3 = Color3.fromRGB(24, 24, 24)
	TabsHolder.ScaleType = Enum.ScaleType.Slice
	TabsHolder.SliceCenter = Rect.new(100, 100, 100, 100)
	TabsHolder.SliceScale = 0.050
	BloxburgTitle1.Name = "BloxburgTitle"
	BloxburgTitle1.Parent = MainUIFrame
	BloxburgTitle1.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
	BloxburgTitle1.BorderSizePixel = 0
	BloxburgTitle1.Position = UDim2.new(0.226860255, 0, 0, 0)
	BloxburgTitle1.Size = UDim2.new(0, 426, 0, 35)
	BloxburgTitle.Name = "BloxburgTitle"
	BloxburgTitle.Parent = BloxburgTitle1
	BloxburgTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BloxburgTitle.BackgroundTransparency = 1.000
	BloxburgTitle.BorderColor3 = Color3.fromRGB(27, 42, 53)
	BloxburgTitle.Position = UDim2.new(0.0140845068, 0, 0, 0)
	BloxburgTitle.Size = UDim2.new(0, 420, 0, 35)
	BloxburgTitle.Font = Enum.Font.GothamBold
	BloxburgTitle.Text = TitleWhite
	BloxburgTitle.TextColor3 = Color3.fromRGB(233, 233, 233)
	BloxburgTitle.TextSize = 15.000
	BloxburgTitle.TextXAlignment = Enum.TextXAlignment.Left
	BloxburgHubTitle.Name = "BloxburgHubTitle"
	BloxburgHubTitle.Parent = BloxburgTitle
	BloxburgHubTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BloxburgHubTitle.BackgroundTransparency = 1.000
	BloxburgHubTitle.Position = UDim2.new(0.165, 0, 0, 0)
	BloxburgHubTitle.Size = UDim2.new(0, 372, 0, 35)
	BloxburgHubTitle.Font = Enum.Font.GothamBold
	BloxburgHubTitle.Text = TitleBlue
	BloxburgHubTitle.TextColor3 = Color3.fromRGB(84, 116, 224)
	BloxburgHubTitle.TextSize = 15.000
	BloxburgHubTitle.TextXAlignment = Enum.TextXAlignment.Left
	UIListLayout.Parent = TabsHolder
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIPadding.Parent = TabsHolder
	local MainUITabPickedHolder = Instance.new("Frame")
	MainUITabPickedHolder.Name = "MainUITabPickedHolder"
	MainUITabPickedHolder.Parent = MainUIFrame
	MainUITabPickedHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MainUITabPickedHolder.BackgroundTransparency = 1.000
	MainUITabPickedHolder.Position = UDim2.new(0.226860255, 0, 0.0866336599, 0)
	MainUITabPickedHolder.Size = UDim2.new(0, 426, 0, 369)
	local connections = {}

	MainUIFrame.InputBegan:connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			local InitialPos = input.Position
			local InitialFramePos = MainUIFrame.Position
			connections.MouseMoved = UserInputService.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement then
					local delta = input.Position - InitialPos
					tweenObject(MainUIFrame, {
						Position = UDim2.new(InitialFramePos.X.Scale, InitialFramePos.X.Offset + delta.X, InitialFramePos.Y.Scale, InitialFramePos.Y.Offset + delta.Y)
					}, 0.1)
				end
			end)
			MainUIFrame.InputEnded:connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 then
					connections.MouseMoved:Disconnect()
				end
			end)
		end
	end)

	local opened = true

	UserInputService.InputBegan:Connect(function(input)
		if input.KeyCode == Enum.KeyCode.RightControl then
			if opened == true then
				if MainUIFrame.Parent ~= nil then
					MainUIFrame.ClipsDescendants = true
					MainUIFrame:TweenSize(UDim2.new(0, 0, 0, 404), Enum.EasingDirection.In, Enum.EasingStyle.Linear, 0.5, true)
					opened = false
					wait(0.5)
				end
			elseif opened == false then
				if MainUIFrame.Parent ~= nil then
					MainUIFrame:TweenSize(UDim2.new(0, 551, 0, 404), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.5, true)
					opened = true
					wait(0.5)
					MainUIFrame.ClipsDescendants = false
				end
			end
		end
	end)

	local window = {}
	function window:Notification(Type, content)
		if Type == "Message" then
			local NotificationMain = Instance.new("ImageLabel")
			local NotificationDropShadow = Instance.new("ImageLabel")
			local NotificationTitleHodler = Instance.new("Frame")
			local NotificationTitle = Instance.new("TextLabel")
			local NotificationCool = Instance.new("ImageLabel")
			local NotificationText = Instance.new("TextLabel")
			local NotificationOkay = Instance.new("TextButton")
			NotificationMain.Name = "NotificationMain"
			NotificationMain.Parent = BloxburgUi
			NotificationMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			NotificationMain.BackgroundTransparency = 1.000
			NotificationMain.Position = UDim2.new(-0.3, 0, 0.775, 0)
			tweenObject(NotificationMain, {
				Position = UDim2.new(0.015, 0, 0.775, 0)
			}, 0.5)
			NotificationMain.Size = UDim2.new(0, 268, 0, 124)
			NotificationMain.Image = "rbxassetid://3570695787"
			NotificationMain.ImageColor3 = Color3.fromRGB(22, 22, 22)
			NotificationMain.ScaleType = Enum.ScaleType.Slice
			NotificationMain.SliceCenter = Rect.new(100, 100, 100, 100)
			NotificationMain.SliceScale = 0.050
			NotificationDropShadow.Name = "NotificationDropShadow"
			NotificationDropShadow.Parent = NotificationMain
			NotificationDropShadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			NotificationDropShadow.BackgroundTransparency = 1.000
			NotificationDropShadow.Position = UDim2.new(-0.315028518, 0, -0.540322602, 0)
			NotificationDropShadow.Size = UDim2.new(0, 442, 0, 258)
			NotificationDropShadow.ZIndex = -1
			NotificationDropShadow.Image = "rbxassetid://5089202498"
			NotificationTitleHodler.Name = "NotificationTitleHodler"
			NotificationTitleHodler.Parent = NotificationMain
			NotificationTitleHodler.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
			NotificationTitleHodler.BorderSizePixel = 0
			NotificationTitleHodler.Size = UDim2.new(0, 268, 0, 31)
			NotificationTitle.Name = "NotificationTitle"
			NotificationTitle.Parent = NotificationTitleHodler
			NotificationTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			NotificationTitle.BackgroundTransparency = 1.000
			NotificationTitle.Position = UDim2.new(0.0261194035, 0, 0, 0)
			NotificationTitle.Size = UDim2.new(0, 261, 0, 31)
			NotificationTitle.Font = Enum.Font.GothamSemibold
			NotificationTitle.Text = "Notification"
			NotificationTitle.TextColor3 = Color3.fromRGB(233, 233, 233)
			NotificationTitle.TextSize = 14.000
			NotificationTitle.TextXAlignment = Enum.TextXAlignment.Left
			NotificationCool.Name = "NotificationCool"
			NotificationCool.Parent = NotificationTitleHodler
			NotificationCool.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			NotificationCool.BackgroundTransparency = 1.000
			NotificationCool.Position = UDim2.new(0.914178967, 0, 0.225806445, 0)
			NotificationCool.Size = UDim2.new(0, 17, 0, 17)
			NotificationCool.Image = "rbxgameasset://Images/w"
			NotificationText.Name = "NotificationText"
			NotificationText.Parent = NotificationMain
			NotificationText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			NotificationText.BackgroundTransparency = 1.000
			NotificationText.Position = UDim2.new(-0.0037313432, 0, 0.25, 0)
			NotificationText.Size = UDim2.new(0, 268, 0, 66)
			NotificationText.ZIndex = 2
			NotificationText.Font = Enum.Font.GothamSemibold
			NotificationText.Text = content.Text
			NotificationText.TextColor3 = Color3.fromRGB(233, 233, 233)
			NotificationText.TextSize = 14.000
			NotificationOkay.Name = "NotificationOkay"
			NotificationOkay.Parent = NotificationMain
			NotificationOkay.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
			NotificationOkay.BorderSizePixel = 0
			NotificationOkay.Position = UDim2.new(0.0223880596, 0, 0.782258093, 0)
			NotificationOkay.Size = UDim2.new(0, 256, 0, 21)
			NotificationOkay.Font = Enum.Font.GothamSemibold
			NotificationOkay.Text = content.ConfirmText
			NotificationOkay.TextColor3 = Color3.fromRGB(233, 233, 233)
			NotificationOkay.TextSize = 13.000
			NotificationOkay.MouseButton1Click:connect(function()
				tweenObject(NotificationMain, {
					Position = UDim2.new(-0.3, 0, 0.775, 0)
				}, 0.5)
				wait(0.5)
				NotificationMain:Destroy()
			end)
		elseif Type == "Error" then
			local ErrorMain = Instance.new("ImageLabel")
			local ErrorDropShadow = Instance.new("ImageLabel")
			local ErrorTitleHolder = Instance.new("Frame")
			local ErrorTitle = Instance.new("TextLabel")
			local ErrorBad = Instance.new("ImageLabel")
			local ErrorText = Instance.new("TextLabel")
			local ErrorOkay = Instance.new("TextButton")
			ErrorMain.Name = "ErrorMain"
			ErrorMain.Parent = BloxburgUi
			ErrorMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ErrorMain.BackgroundTransparency = 1.000
			ErrorMain.Position = UDim2.new(-0.3, 0, 0.775, 0)
			tweenObject(ErrorMain, {
				Position = UDim2.new(0.015, 0, 0.775, 0)
			}, 0.5)
			ErrorMain.Size = UDim2.new(0, 268, 0, 124)
			ErrorMain.Image = "rbxassetid://3570695787"
			ErrorMain.ImageColor3 = Color3.fromRGB(22, 22, 22)
			ErrorMain.ScaleType = Enum.ScaleType.Slice
			ErrorMain.SliceCenter = Rect.new(100, 100, 100, 100)
			ErrorMain.SliceScale = 0.050
			ErrorDropShadow.Name = "ErrorDropShadow"
			ErrorDropShadow.Parent = ErrorMain
			ErrorDropShadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ErrorDropShadow.BackgroundTransparency = 1.000
			ErrorDropShadow.Position = UDim2.new(-0.315028518, 0, -0.540322602, 0)
			ErrorDropShadow.Size = UDim2.new(0, 442, 0, 258)
			ErrorDropShadow.ZIndex = -1
			ErrorDropShadow.Image = "rbxassetid://5089202498"
			ErrorTitleHolder.Name = "ErrorTitleHolder"
			ErrorTitleHolder.Parent = ErrorMain
			ErrorTitleHolder.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
			ErrorTitleHolder.BorderSizePixel = 0
			ErrorTitleHolder.Size = UDim2.new(0, 268, 0, 31)
			ErrorTitle.Name = "ErrorTitle"
			ErrorTitle.Parent = ErrorTitleHolder
			ErrorTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ErrorTitle.BackgroundTransparency = 1.000
			ErrorTitle.Position = UDim2.new(0.0261194035, 0, 0, 0)
			ErrorTitle.Size = UDim2.new(0, 261, 0, 31)
			ErrorTitle.Font = Enum.Font.GothamSemibold
			ErrorTitle.Text = "ERROR"
			ErrorTitle.TextColor3 = Color3.fromRGB(233, 58, 53)
			ErrorTitle.TextSize = 14.000
			ErrorTitle.TextXAlignment = Enum.TextXAlignment.Left
			ErrorBad.Name = "ErrorBad"
			ErrorBad.Parent = ErrorTitleHolder
			ErrorBad.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ErrorBad.BackgroundTransparency = 1.000
			ErrorBad.Position = UDim2.new(0.914178848, 0, 0.225806445, 0)
			ErrorBad.Size = UDim2.new(0, 17, 0, 17)
			ErrorBad.Image = "rbxgameasset://Images/d"
			ErrorBad.ImageColor3 = Color3.fromRGB(233, 58, 53)
			ErrorText.Name = "ErrorText"
			ErrorText.Parent = ErrorMain
			ErrorText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ErrorText.BackgroundTransparency = 1.000
			ErrorText.Position = UDim2.new(-0.0037313432, 0, 0.25, 0)
			ErrorText.Size = UDim2.new(0, 268, 0, 66)
			ErrorText.ZIndex = 2
			ErrorText.Font = Enum.Font.GothamSemibold
			ErrorText.Text = content.Text
			ErrorText.TextColor3 = Color3.fromRGB(233, 233, 233)
			ErrorText.TextSize = 14.000
			ErrorOkay.Name = "ErrorOkay"
			ErrorOkay.Parent = ErrorMain
			ErrorOkay.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
			ErrorOkay.BorderSizePixel = 0
			ErrorOkay.Position = UDim2.new(0.0223880596, 0, 0.782258093, 0)
			ErrorOkay.Size = UDim2.new(0, 256, 0, 21)
			ErrorOkay.Font = Enum.Font.GothamSemibold
			ErrorOkay.Text = content.ConfirmText
			ErrorOkay.TextColor3 = Color3.fromRGB(233, 233, 233)
			ErrorOkay.TextSize = 13.000
			ErrorOkay.MouseButton1Click:connect(function()
				tweenObject(ErrorMain, {
					Position = UDim2.new(-0.3, 0, 0.775, 0)
				}, 0.5)
				wait(0.5)
				ErrorMain:Destroy()
			end)
		end
	end
	local activeTab = nil
	local activeTabFrame = nil
	function window:Tab(name)
		local TabSelected = Instance.new("TextButton")
		local TabTOpFrame = Instance.new("Frame")
		local TabBottomFrame = Instance.new("Frame")
		local MainUITabPicked = Instance.new("ScrollingFrame")
		TabSelected.Name = "TabSelected"
		TabSelected.Parent = TabsHolder
		TabSelected.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
		TabSelected.BorderSizePixel = 0
		TabSelected.Size = UDim2.new(0, 125, 0, 30)
		TabSelected.AutoButtonColor = false
		TabSelected.Font = Enum.Font.GothamSemibold
		TabSelected.Text = name
		TabSelected.TextColor3 = Color3.fromRGB(66, 66, 66)
		TabSelected.TextSize = 13.000
		TabTOpFrame.Name = "TabTOpFrame"
		TabTOpFrame.Parent = TabSelected
		TabTOpFrame.BackgroundColor3 = Color3.fromRGB(84, 116, 224)
		TabTOpFrame.BorderColor3 = Color3.fromRGB(84, 116, 224)
		TabTOpFrame.BorderSizePixel = 0
		TabTOpFrame.Size = UDim2.new(0, 125, 0, 1)
		TabTOpFrame.BackgroundTransparency = 1
		TabBottomFrame.Name = "TabBottomFrame"
		TabBottomFrame.Parent = TabSelected
		TabBottomFrame.BackgroundColor3 = Color3.fromRGB(84, 116, 224)
		TabBottomFrame.BorderColor3 = Color3.fromRGB(84, 116, 224)
		TabBottomFrame.BorderSizePixel = 0
		TabBottomFrame.Position = UDim2.new(0, 0, 0.966666639, 0)
		TabBottomFrame.Size = UDim2.new(0, 125, 0, 1)
		TabBottomFrame.BackgroundTransparency = 1
		local UIListLayout_2 = Instance.new("UIListLayout")
		local UIPadding_2 = Instance.new("UIPadding")
		MainUITabPicked.Name = "MainUITabPicked"
		MainUITabPicked.Parent = MainUITabPickedHolder
		MainUITabPicked.CanvasSize = UDim2.new(0, 0, 0, 0)
		MainUITabPicked.Active = true
		MainUITabPicked.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		MainUITabPicked.BackgroundTransparency = 1.000
		MainUITabPicked.Size = UDim2.new(0, 426, 0, 369)
		MainUITabPicked.ScrollBarThickness = 2
		MainUITabPicked.Visible = false
		UIListLayout_2.Parent = MainUITabPicked
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_2.Padding = UDim.new(0, 8)
		UIPadding_2.Parent = MainUITabPicked
		UIPadding_2.PaddingLeft = UDim.new(0, 8)
		UIPadding_2.PaddingTop = UDim.new(0, 8)
		if activeTab == nil then
			MainUITabPicked.Visible = true
			activeTabFrame = MainUITabPicked
			tweenObject(TabSelected, {
				BackgroundColor3 = Color3.fromRGB(17, 17, 30)
			}, 0.5)
			tweenObject(TabSelected, {
				TextColor3 = Color3.fromRGB(84, 116, 224)
			}, 0.5)
			activeTab = TabSelected
			tweenObject(TabBottomFrame, {
				BackgroundTransparency = 0
			}, 0.5)
			tweenObject(TabTOpFrame, {
				BackgroundTransparency = 0
			}, 0.5)
		end
		TabSelected.MouseButton1Click:Connect(function()
			tweenObject(activeTab.TabBottomFrame, {
				BackgroundTransparency = 1
			}, 0.5)
			tweenObject(activeTab.TabTOpFrame, {
				BackgroundTransparency = 1
			}, 0.5)
			tweenObject(activeTab, {
				BackgroundColor3 = Color3.fromRGB(24, 24, 24)
			}, 0.5)
			tweenObject(activeTab, {
				TextColor3 = Color3.fromRGB(66, 66, 66)
			}, 0.5)
			activeTabFrame.Visible = false
			activeTab = TabSelected
			activeTabFrame = MainUITabPicked
			MainUITabPicked.Visible = true
			tweenObject(TabSelected, {
				BackgroundColor3 = Color3.fromRGB(17, 17, 30)
			}, 0.5)
			tweenObject(TabSelected, {
				TextColor3 = Color3.fromRGB(84, 116, 224)
			}, 0.5)
			tweenObject(TabBottomFrame, {
				BackgroundTransparency = 0
			}, 0.5)
			tweenObject(TabTOpFrame, {
				BackgroundTransparency = 0
			}, 0.5)
		end)
		local tab = {}
		local tabSize = 39
		local function ResizeTab()
			MainUITabPicked.CanvasSize = UDim2.new(0, 0, 0, tabSize)
		end

		function tab:Section(name)
			local SectionBack = Instance.new("ImageLabel")
			local SectionTitleBack = Instance.new("Frame")
			local SectionTitle = Instance.new("TextLabel")
			local SectionFrame = Instance.new("Frame")
			local UIListLayout_3 = Instance.new("UIListLayout")
			local UIPadding_3 = Instance.new("UIPadding")
			local UIListLayout_4 = Instance.new("UIListLayout")
			SectionBack.Name = "Section Back"
			SectionBack.Parent = MainUITabPicked
			SectionBack.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SectionBack.BackgroundTransparency = 1.000
			SectionBack.Position = UDim2.new(0.018779343, 0, -0.978319764, 0)
			SectionBack.Size = UDim2.new(0, 403, 0, 31)
			SectionBack.Image = "rbxassetid://3570695787"
			SectionBack.ImageColor3 = Color3.fromRGB(15, 15, 15)
			SectionBack.ScaleType = Enum.ScaleType.Slice
			SectionBack.SliceCenter = Rect.new(100, 100, 100, 100)
			SectionBack.SliceScale = 0.050

			UIListLayout_4.Parent = SectionBack
			UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
			SectionTitleBack.Name = "SectionTitleBack"
			SectionTitleBack.Parent = SectionBack
			SectionTitleBack.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
			SectionTitleBack.BorderSizePixel = 0
			SectionTitleBack.Size = UDim2.new(0, 403, 0, 31)
			SectionTitle.Name = "SectionTitle"
			SectionTitle.Parent = SectionTitleBack
			SectionTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SectionTitle.BackgroundTransparency = 1.000
			SectionTitle.Position = UDim2.new(0.0148883378, 0, 0, 0)
			SectionTitle.Size = UDim2.new(0, 397, 0, 31)
			SectionTitle.Font = Enum.Font.GothamSemibold
			SectionTitle.Text = name
			SectionTitle.TextColor3 = Color3.fromRGB(233, 233, 233)
			SectionTitle.TextSize = 14.000
			SectionTitle.TextXAlignment = Enum.TextXAlignment.Left
			SectionFrame.Name = "SectionFrame"
			SectionFrame.Parent = SectionBack
			SectionFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SectionFrame.BackgroundTransparency = 1.000
			SectionFrame.BorderSizePixel = 0
			SectionFrame.Position = UDim2.new(0, 0, 0.0775000006, 0)
			SectionFrame.Size = UDim2.new(0, 403, 0, 0)
			UIListLayout_3.Parent = SectionFrame
			UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_3.Padding = UDim.new(0, 8)
			UIPadding_3.Parent = SectionFrame
			UIPadding_3.PaddingLeft = UDim.new(0, 8)
			UIPadding_3.PaddingTop = UDim.new(0, 8)
            
            --tabSize = tabSize +
			tabSize = tabSize + 41
			ResizeTab()
			local sectionSize = 39
			local function ResizeSection()
				SectionBack.Size = UDim2.new(0, 403, 0, sectionSize)
				SectionFrame.Size = UDim2.new(0, 403, 0, sectionSize - 31)
			end

			local section = {}
			function section:Label(name)
				sectionSize = sectionSize + 39
				tabSize = tabSize + 39
				ResizeTab()
				ResizeSection()
				local LabelBack = Instance.new("Frame")
				local LabelTitle = Instance.new("TextLabel")
				LabelBack.Name = "LabelBack"
				LabelBack.Parent = SectionFrame
				LabelBack.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
				LabelBack.BorderSizePixel = 0
				LabelBack.Position = UDim2.new(0.018779343, 0, 0.233062327, 0)
				LabelBack.Size = UDim2.new(0, 390, 0, 31)
				LabelTitle.Name = "LabelTitle"
				LabelTitle.Parent = LabelBack
				LabelTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelTitle.BackgroundTransparency = 1.000
				LabelTitle.Position = UDim2.new(0.0147783253, 0, 0, 0)
				LabelTitle.Size = UDim2.new(0, 400, 0, 31)
				LabelTitle.Font = Enum.Font.GothamSemibold
				LabelTitle.TextColor3 = Color3.fromRGB(233, 233, 233)
				LabelTitle.TextSize = 13.000
				LabelTitle.Text = name
				LabelTitle.TextXAlignment = Enum.TextXAlignment.Left

				local label = {}
				warn(#label)
				function label:Update(name)
					LabelTitle.Text = name
				end
				warn(#label)
				return label
			end
			function section:Slider(name, options, callback)
				sectionSize = sectionSize + 63
				tabSize = tabSize + 63
				ResizeTab()
				ResizeSection()
				local Sliderback = Instance.new("Frame")
				local SliderTitle = Instance.new("TextLabel")
				local SliderBarBack = Instance.new("ImageButton")
				local Sliderhandle = Instance.new("ImageLabel")
				local SliderValueBack = Instance.new("ImageLabel")
				local SliderValue = Instance.new("TextBox")
				local TextButton = Instance.new("TextButton")
				local TextButton_2 = Instance.new("TextButton")

				Sliderback.Name = "Sliderback"
				Sliderback.Parent = SectionFrame
				Sliderback.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
				Sliderback.BorderSizePixel = 0
				Sliderback.Position = UDim2.new(0.018779343, 0, 0.233062327, 0)
				Sliderback.Size = UDim2.new(0, 390, 0, 55)
				TextButton.Parent = Sliderback
				TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextButton.BackgroundTransparency = 1
				TextButton.Position = UDim2.new(0.675, 0, 0.0181818306, 0)
				TextButton.Size = UDim2.new(0, 35, 0, 35)
				TextButton.Font = Enum.Font.Gotham
				TextButton.Text = "-"
				TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextButton.TextSize = 14.000
				TextButton_2.Parent = Sliderback
				TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextButton_2.BackgroundTransparency = 1
				TextButton_2.Position = UDim2.new(0.92, 0, 9.31322575e-09, 0)
				TextButton_2.Size = UDim2.new(0, 35, 0, 35)
				TextButton_2.Font = Enum.Font.Gotham
				TextButton_2.Text = "+"
				TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextButton_2.TextSize = 14.000

				SliderTitle.Name = "SliderTitle"
				SliderTitle.Parent = Sliderback
				SliderTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderTitle.BackgroundTransparency = 1.000
				SliderTitle.Position = UDim2.new(0.0147783253, 0, 0, 0)
				SliderTitle.Size = UDim2.new(0, 400, 0, 31)
				SliderTitle.Font = Enum.Font.GothamSemibold
				SliderTitle.Text = name
				SliderTitle.TextColor3 = Color3.fromRGB(233, 233, 233)
				SliderTitle.TextSize = 13.000
				SliderTitle.TextXAlignment = Enum.TextXAlignment.Left
				SliderBarBack.Name = "SliderBarBack"
				SliderBarBack.Parent = Sliderback
				SliderBarBack.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderBarBack.BackgroundTransparency = 1.000
				SliderBarBack.Position = UDim2.new(0.0147783253, 0, 0.76363641, 0)
				SliderBarBack.Size = UDim2.new(0, 380, 0, 6)
				SliderBarBack.Image = "rbxassetid://3570695787"
				SliderBarBack.ImageColor3 = Color3.fromRGB(77, 77, 77)
				SliderBarBack.ScaleType = Enum.ScaleType.Slice
				SliderBarBack.SliceCenter = Rect.new(100, 100, 100, 100)
				SliderBarBack.SliceScale = 0.050
				Sliderhandle.Name = "Sliderhandle"
				Sliderhandle.Parent = SliderBarBack
				Sliderhandle.BackgroundColor3 = Color3.fromRGB(84, 116, 224)
				Sliderhandle.BackgroundTransparency = 1.000
				Sliderhandle.Size = UDim2.new(0, 0, 0, 6)
				Sliderhandle.Image = "rbxassetid://3570695787"
				Sliderhandle.ImageColor3 = Color3.fromRGB(84, 116, 224)
				Sliderhandle.ScaleType = Enum.ScaleType.Slice
				Sliderhandle.SliceCenter = Rect.new(100, 100, 100, 100)
				Sliderhandle.SliceScale = 0.050
				SliderValueBack.Name = "SliderValueBack"
				SliderValueBack.Parent = Sliderback
				SliderValueBack.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderValueBack.BackgroundTransparency = 1.000
				SliderValueBack.Position = UDim2.new(0.78, 0, 0.109090909, 0)
				SliderValueBack.Size = UDim2.new(0, 50, 0, 25)
				SliderValueBack.Image = "rbxassetid://3570695787"
				SliderValueBack.ImageColor3 = Color3.fromRGB(14, 14, 14)
				SliderValueBack.ScaleType = Enum.ScaleType.Slice
				SliderValueBack.SliceCenter = Rect.new(100, 100, 100, 100)
				SliderValueBack.SliceScale = 0.050
				SliderValue.Name = "SliderValue"
				SliderValue.Parent = SliderValueBack
				SliderValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderValue.BackgroundTransparency = 1.000
				SliderValue.Size = UDim2.new(0, 50, 0, 25)
				SliderValue.Font = Enum.Font.GothamSemibold
				SliderValue.Text = options.default or options.min < 0 and options.max > 0 and "0" or tostring(options.min)
				SliderValue.TextColor3 = Color3.fromRGB(233, 233, 233)
				SliderValue.TextSize = 13.000

				if options.default then
					value = math.clamp(options.default, options.min, options.max)
					local percent = 1 - ((options.max - value) / (options.max - options.min))
					tweenObject(Sliderhandle, {
						Size = UDim2.new(0, percent * 380, 0, 6)
					}, 0.1)
					manual = true
					SliderValue.Text = tostring(value)
					manual = false
				end

				local value = options.default or options.min;
				local connections = {}
				local manual = false
				TextButton.MouseButton1Click:Connect(function()
					value = math.clamp(value - 1, options.min, options.max)
					local percent = 1 - ((options.max - value) / (options.max - options.min))
					tweenObject(Sliderhandle, {
						Size = UDim2.new(0, percent * 380, 0, 6)
					}, 0.1)
					manual = true
					SliderValue.Text = tostring(value)
					manual = false
					if callback then
						callback(value)
					end
				end)
				TextButton_2.MouseButton1Click:Connect(function()
					value = math.clamp(value + 1, options.min, options.max)
					local percent = 1 - ((options.max - value) / (options.max - options.min))
					tweenObject(Sliderhandle, {
						Size = UDim2.new(0, percent * 380, 0, 6)
					}, 0.1)
					manual = true
					SliderValue.Text = tostring(value)
					manual = false
					if callback then
						callback(value)
					end
				end)
				SliderValue:GetPropertyChangedSignal("Text"):Connect(function()
					if not manual then
						if tonumber(SliderValue.Text) ~= nil then
							value = math.clamp(tonumber(SliderValue.Text), options.min, options.max)
							local percent = 1 - ((options.max - value) / (options.max - options.min))
							tweenObject(Sliderhandle, {
								Size = UDim2.new(0, percent * 380, 0, 6)
							}, 0.1)
							local con
							con = SliderValue.FocusLost:Connect(function()
								con:Disconnect()
								if callback then
									callback(value)
								end
							end)
						end
					end
				end)

				SliderBarBack.MouseButton1Down:Connect(function()
					value = math.floor((((tonumber(options.max) - tonumber(options.min)) / 380) * Sliderhandle.AbsoluteSize.X) + tonumber(options.min) + 0.5) or 0
					SliderValue.Text = value
					tweenObject(Sliderhandle, {
						Size = UDim2.new(0, math.clamp(Mouse.X - Sliderhandle.AbsolutePosition.X, 0, 380), 0, 6)
					}, 0.1)
					tweenObject(Sliderhandle, {
						ImageColor3 = Color3.fromRGB(255, 255, 255)
					}, 0.2)
					if callback then
						callback(value)
					end
					connections.MoveConnection = Mouse.Move:Connect(function()
						value = math.floor((((tonumber(options.max) - tonumber(options.min)) / 380) * Sliderhandle.AbsoluteSize.X) + tonumber(options.min) + 0.5) or 0
						SliderValue.Text = value
						tweenObject(Sliderhandle, {
							Size = UDim2.new(0, math.clamp(Mouse.X - Sliderhandle.AbsolutePosition.X, 0, 380), 0, 6)
						}, 0.1)
						tweenObject(Sliderhandle, {
							ImageColor3 = Color3.fromRGB(255, 255, 255)
						}, 0.2)
						if callback then
							callback(value)
						end
					end)
					connections.ReleaseConnection = UserInputService.InputEnded:Connect(function(mouse)
						if mouse.UserInputType == Enum.UserInputType.MouseButton1 then
							value = math.floor((((tonumber(options.max) - tonumber(options.min)) / 380) * Sliderhandle.AbsoluteSize.X) + tonumber(options.min) + 0.5) or 0
							SliderValue.Text = value
							tweenObject(Sliderhandle, {
								Size = UDim2.new(0, math.clamp(Mouse.X - Sliderhandle.AbsolutePosition.X, 0, 380), 0, 6)
							}, 0.1)
							tweenObject(Sliderhandle, {
								ImageColor3 = Color3.fromRGB(84, 116, 224)
							}, 0.2)
							connections.MoveConnection:Disconnect()
							connections.ReleaseConnection:Disconnect()
							if callback then
								callback(value)
							end
						end
					end)
				end)
				local slider = {}
				function slider:Update(val)
					value = math.clamp(val, options.min, options.max)
					local percent = 1 - ((options.max - value) / (options.max - options.min))
					tweenObject(Sliderhandle, {
						Size = UDim2.new(0, percent * 380, 0, 6)
					}, 0.1)
					if callback then
						callback(value)
					end
				end
				return slider
			end
			function section:Box(name, callback)
				sectionSize = sectionSize + 39
				tabSize = tabSize + 39
				ResizeTab()
				ResizeSection()
				local TextBoxMain = Instance.new("Frame")
				local TextBoxTitle = Instance.new("TextLabel")
				local TextBox = Instance.new("TextBox")
				local TextBox_Roundify_5px = Instance.new("ImageLabel")
				TextBoxMain.Name = "TextBoxMain"
				TextBoxMain.Parent = SectionFrame
				TextBoxMain.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
				TextBoxMain.BorderColor3 = Color3.fromRGB(27, 42, 53)
				TextBoxMain.BorderSizePixel = 0
				TextBoxMain.Position = UDim2.new(0.018779343, 0, 0.615176141, 0)
				TextBoxMain.Size = UDim2.new(0, 390, 0, 31)
				TextBoxTitle.Name = "TextBoxTitle"
				TextBoxTitle.Parent = TextBoxMain
				TextBoxTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextBoxTitle.BackgroundTransparency = 1.000
				TextBoxTitle.Position = UDim2.new(0.0147783253, 0, 0, 0)
				TextBoxTitle.Size = UDim2.new(0, 400, 0, 31)
				TextBoxTitle.Font = Enum.Font.GothamSemibold
				TextBoxTitle.Text = name
				TextBoxTitle.TextColor3 = Color3.fromRGB(233, 233, 233)
				TextBoxTitle.TextSize = 13.000
				TextBoxTitle.TextXAlignment = Enum.TextXAlignment.Left
				TextBox.Parent = TextBoxMain
				TextBox.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
				TextBox.BackgroundTransparency = 1.000
				TextBox.BorderSizePixel = 0
				TextBox.Position = UDim2.new(0.270329684, 0, 0.193548381, 0)
				TextBox.Size = UDim2.new(0, 284, 0, 18)
				TextBox.ZIndex = 2
				TextBox.Font = Enum.Font.GothamSemibold
				TextBox.PlaceholderColor3 = Color3.fromRGB(66, 66, 66)
				TextBox.PlaceholderText = name
				TextBox.Text = ""
				TextBox.TextColor3 = Color3.fromRGB(233, 233, 233)
				TextBox.TextSize = 13.000
				TextBox_Roundify_5px.Name = "TextBox_Roundify_5px"
				TextBox_Roundify_5px.Parent = TextBox
				TextBox_Roundify_5px.Active = true
				TextBox_Roundify_5px.AnchorPoint = Vector2.new(0.5, 0.5)
				TextBox_Roundify_5px.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextBox_Roundify_5px.BackgroundTransparency = 1.000
				TextBox_Roundify_5px.Position = UDim2.new(0.5, 0, 0.5, 0)
				TextBox_Roundify_5px.Selectable = true
				TextBox_Roundify_5px.Size = UDim2.new(1, 0, 1, 0)
				TextBox_Roundify_5px.Image = "rbxassetid://3570695787"
				TextBox_Roundify_5px.ImageColor3 = Color3.fromRGB(13, 13, 13)
				TextBox_Roundify_5px.ScaleType = Enum.ScaleType.Slice
				TextBox_Roundify_5px.SliceCenter = Rect.new(100, 100, 100, 100)
				TextBox_Roundify_5px.SliceScale = 0.040
				TextBox.FocusLost:Connect(function()
					if callback then
						callback(TextBox.Text)
					end
				end)
				local box = {}

				function box:Update(val)
					TextBox.Text = val
					if callback then
						callback(val)
					end
				end

				return box
			end
			function section:Picker(name, options, callback)
				sectionSize = sectionSize + 70
				tabSize = tabSize + 70
				ResizeTab()
				ResizeSection()
				local PickerBack = Instance.new("Frame")
				local PickerTitle = Instance.new("TextLabel")
				local OptionsHolder = Instance.new("ImageLabel")
				local UIListLayout = Instance.new("UIListLayout")
				PickerBack.Name = "PickerBack"
				PickerBack.Parent = SectionFrame
				PickerBack.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
				PickerBack.BorderSizePixel = 0
				PickerBack.Position = UDim2.new(0.018779343, 0, 0.420054197, 0)
				PickerBack.Size = UDim2.new(0, 390, 0, 62)
				PickerTitle.Name = "PickerTitle"
				PickerTitle.Parent = PickerBack
				PickerTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				PickerTitle.BackgroundTransparency = 1.000
				PickerTitle.Position = UDim2.new(0.0147783253, 0, 0, 0)
				PickerTitle.Size = UDim2.new(0, 400, 0, 31)
				PickerTitle.Font = Enum.Font.GothamSemibold
				PickerTitle.Text = name
				PickerTitle.TextColor3 = Color3.fromRGB(233, 233, 233)
				PickerTitle.TextSize = 13.000
				PickerTitle.TextXAlignment = Enum.TextXAlignment.Left
				OptionsHolder.Name = "OptionsHolder"
				OptionsHolder.Parent = PickerBack
				OptionsHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				OptionsHolder.BackgroundTransparency = 1.000
				OptionsHolder.Position = UDim2.new(0.0147783328, 0, 0.5, 0)
				OptionsHolder.Size = UDim2.new(0, 384, 0, 24)
				OptionsHolder.Image = "rbxassetid://3570695787"
				OptionsHolder.ImageColor3 = Color3.fromRGB(14, 14, 14)
				OptionsHolder.ScaleType = Enum.ScaleType.Slice
				OptionsHolder.SliceCenter = Rect.new(100, 100, 100, 100)
				OptionsHolder.SliceScale = 0.050
				UIListLayout.Parent = OptionsHolder
				UIListLayout.FillDirection = Enum.FillDirection.Horizontal
				UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
				local activeButton = nil
				for i, v in next, options do
					local OptionDeselected = Instance.new("TextButton")
					OptionDeselected.Name = "OptionDeselected"
					OptionDeselected.Parent = OptionsHolder
					OptionDeselected.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
					OptionDeselected.BorderSizePixel = 0
					OptionDeselected.Size = UDim2.new(0, 77, 0, 24)
					OptionDeselected.AutoButtonColor = false
					OptionDeselected.Font = Enum.Font.GothamSemibold
					OptionDeselected.Text = v
					OptionDeselected.TextColor3 = Color3.fromRGB(66, 66, 66)
					OptionDeselected.TextSize = 13.000
					if activeButton == nil then
						activeButton = OptionDeselected
						OptionDeselected.TextColor3 = Color3.fromRGB(84, 116, 224)
						if callback then
							callback(v)
						end
					end
					OptionDeselected.MouseButton1Click:Connect(function()
						if activeButton == OptionDeselected then
							return
						end
						if activeButton then
							tweenObject(activeButton, {
								TextColor3 = Color3.fromRGB(66, 66, 66)
							}, 0.2)
						end
						tweenObject(OptionDeselected, {
							TextColor3 = Color3.fromRGB(84, 116, 224)
						}, 0.2)
						activeButton = OptionDeselected
						if callback then
							callback(v)
						end
					end)
				end
				local picker = {}
				function picker:Update(value)
					for i, v in next, OptionsHolder:GetChildren() do 
						if v.Text == value then
							if activeButton == v then
								return
							end
							if activeButton then
								tweenObject(activeButton, {
									TextColor3 = Color3.fromRGB(66, 66, 66)
								}, 0.2)
							end
							tweenObject(v, {
								TextColor3 = Color3.fromRGB(84, 116, 224)
							}, 0.2)
							activeButton = v
							if callback then
								callback(v.Text)
							end
							return
						end
					end
				end
				return picker
			end
			function section:Toggle(name, default, callback)
				sectionSize = sectionSize + 39
				tabSize = tabSize + 39
				ResizeTab()
				ResizeSection()

				local ToggleBackButton = Instance.new("TextButton")
				local ToggleTitle = Instance.new("TextLabel")
				local ToggleIndicator = Instance.new("ImageLabel")
				ToggleBackButton.Name = "ToggleBackButton"
				ToggleBackButton.Parent = SectionFrame
				ToggleBackButton.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
				ToggleBackButton.BorderSizePixel = 0
				ToggleBackButton.Size = UDim2.new(0, 390, 0, 31)
				ToggleBackButton.AutoButtonColor = false
				ToggleBackButton.Font = Enum.Font.SourceSans
				ToggleBackButton.Text = ""
				ToggleBackButton.TextColor3 = Color3.fromRGB(0, 0, 0)
				ToggleBackButton.TextSize = 14.000
				ToggleTitle.Name = "ToggleTitle"
				ToggleTitle.Parent = ToggleBackButton
				ToggleTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ToggleTitle.BackgroundTransparency = 1.000
				ToggleTitle.Position = UDim2.new(0.0147783253, 0, 0, 0)
				ToggleTitle.Size = UDim2.new(0, 400, 0, 31)
				ToggleTitle.Font = Enum.Font.GothamSemibold
				ToggleTitle.Text = name
				ToggleTitle.TextColor3 = Color3.fromRGB(233, 233, 233)
				ToggleTitle.TextSize = 13.000
				ToggleTitle.TextXAlignment = Enum.TextXAlignment.Left
				ToggleIndicator.Name = "ToggleIndicator"
				ToggleIndicator.Parent = ToggleBackButton
				ToggleIndicator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ToggleIndicator.BackgroundTransparency = 1.000
				ToggleIndicator.Position = UDim2.new(0.933396459, 0, 0.161290318, 0)
				ToggleIndicator.Size = UDim2.new(0, 20, 0, 20)
				ToggleIndicator.Image = "rbxassetid://3570695787"
				if not default then
					ToggleIndicator.ImageColor3 = Color3.fromRGB(0, 0, 0)
				else
					ToggleIndicator.ImageColor3 = Color3.fromRGB(84, 116, 224)
				end
				ToggleIndicator.ScaleType = Enum.ScaleType.Slice
				ToggleIndicator.SliceCenter = Rect.new(100, 100, 100, 100)
				ToggleIndicator.SliceScale = 0.050
				ToggleBackButton.MouseButton1Click:Connect(function()--better color pls
					if ToggleIndicator.ImageColor3 == Color3.fromRGB(84, 116, 224) then
						tweenObject(ToggleIndicator, {
							ImageColor3 = Color3.fromRGB(0, 0, 0)
						}, 0.1)
						if callback then
							callback(false)
						end
					elseif ToggleIndicator.ImageColor3 == Color3.fromRGB(0, 0, 0) then
						tweenObject(ToggleIndicator, {
							ImageColor3 = Color3.fromRGB(84, 116, 224)
						}, 0.1)
						if callback then
							callback(true)
						end
					end
				end)
				local toggle = {}
				
				function toggle:Update(bool)
					if ToggleIndicator.ImageColor3 == Color3.fromRGB(84, 116, 224) and bool == false then
						tweenObject(ToggleIndicator, {
							ImageColor3 = Color3.fromRGB(0, 0, 0)
						}, 0.1)
						if callback then
							callback(false)
						end
					elseif ToggleIndicator.ImageColor3 == Color3.fromRGB(0, 0, 0) and bool == true then
						tweenObject(ToggleIndicator, {
							ImageColor3 = Color3.fromRGB(84, 116, 224)
						}, 0.1)
						if callback then
							callback(true)
						end
					end
				end
				
				function toggle:UpdateName(name)
					ToggleTitle.Text = name
				end

				return toggle
			end
			function section:Button(name, callback)
				sectionSize = sectionSize + 39
				tabSize = tabSize + 39
				ResizeTab()
				ResizeSection()

				local Button = Instance.new("TextButton")
				local ButtonTitle = Instance.new("TextLabel")
				local ButtonCool = Instance.new("ImageLabel")
				Button.Name = "Button"
				Button.Parent = SectionFrame
				Button.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
				Button.BorderSizePixel = 0
				Button.ClipsDescendants = true
				Button.Position = UDim2.new(0.018779343, 0, 0.0216802172, 0)
				Button.Size = UDim2.new(0, 390, 0, 31)
				Button.AutoButtonColor = false
				Button.Font = Enum.Font.SourceSans
				Button.Text = ""
				Button.TextColor3 = Color3.fromRGB(0, 0, 0)
				Button.TextSize = 14.000
				ButtonTitle.Name = "ButtonTitle"
				ButtonTitle.Parent = Button
				ButtonTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ButtonTitle.BackgroundTransparency = 1.000
				ButtonTitle.Position = UDim2.new(0.0147783253, 0, 0, 0)
				ButtonTitle.Size = UDim2.new(0, 400, 0, 31)
				ButtonTitle.Font = Enum.Font.GothamBold
				ButtonTitle.Text = name
				ButtonTitle.TextColor3 = Color3.fromRGB(233, 233, 233)
				ButtonTitle.TextSize = 13.000
				ButtonTitle.TextXAlignment = Enum.TextXAlignment.Center
				ButtonCool.Name = "ButtonCool"
				ButtonCool.Parent = ButtonTitle
				ButtonCool.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ButtonCool.BackgroundTransparency = 1.000
				ButtonCool.Position = UDim2.new(0.899178982, 0, 0.225806445, 0)
				ButtonCool.Size = UDim2.new(0, 17, 0, 17)
				ButtonCool.Image = "rbxgameasset://Images/w"
				Button.MouseEnter:Connect(function()
					tweenObject(Button, {
						BackgroundColor3 = Color3.fromRGB(64, 64, 64)
					}, 0.3)
				end)
                
				Button.MouseLeave:Connect(function()
					tweenObject(Button, {
						BackgroundColor3 = Color3.fromRGB(24, 24, 24)
					}, 0.3)
				end)
				Button.MouseButton1Click:Connect(function()
					coroutine.resume(coroutine.create(function()
						local Circle = Instance.new("ImageLabel")
						Circle.Name = "Circle"
						Circle.Parent = Button
						Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Circle.BackgroundTransparency = 1
						Circle.ZIndex = 10
						Circle.Image = "rbxassetid://266543268"
						Circle.ImageColor3 = Color3.fromRGB(255, 255, 255)
						Circle.ImageTransparency = 0.900
						Button.ClipsDescendants = true
						Circle.Position = UDim2.new(0, Mouse.X - Circle.AbsolutePosition.X, 0, Mouse.Y - Circle.AbsolutePosition.Y)
						Circle:TweenSizeAndPosition(UDim2.new(0, Button.AbsoluteSize.X * 1.5, 0, Button.AbsoluteSize.X * 1.5), UDim2.new(0.5, -Button.AbsoluteSize.X * 1.5 / 2, 0.5, -Button.AbsoluteSize.X * 1.5 / 2), "Out", "Quad", 0.75, false, nil)
						tweenObject(Circle, {
							ImageTransparency = 1
						}, 0.75)
						wait(0.75)
						Circle:Destroy()
					end))
					if callback then
						callback()
					end
				end)
				local Button = {}
				function Button:Update(name)
					ButtonTitle.Text = name
				end
				return Button
			end
			function section:Keybind(name, options, callback)
				sectionSize = sectionSize + 39
				tabSize = tabSize + 39
				ResizeTab()
				ResizeSection()

				local KeybindButton = Instance.new("TextButton")
				local KeybindTitle = Instance.new("TextLabel")
				local KeybindValueback = Instance.new("ImageLabel")
				local KeybindValue = Instance.new("TextLabel")
				KeybindButton.Name = "KeybindButton"
				KeybindButton.Parent = SectionFrame
				KeybindButton.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
				KeybindButton.BorderSizePixel = 0
				KeybindButton.ClipsDescendants = true
				KeybindButton.Size = UDim2.new(0, 390, 0, 31)
				KeybindButton.AutoButtonColor = false
				KeybindButton.Font = Enum.Font.SourceSans
				KeybindButton.Text = ""
				KeybindButton.TextColor3 = Color3.fromRGB(0, 0, 0)
				KeybindButton.TextSize = 14.000
				KeybindTitle.Name = "KeybindTitle"
				KeybindTitle.Parent = KeybindButton
				KeybindTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				KeybindTitle.BackgroundTransparency = 1.000
				KeybindTitle.Position = UDim2.new(0.0147783253, 0, 0, 0)
				KeybindTitle.Size = UDim2.new(0, 400, 0, 31)
				KeybindTitle.Font = Enum.Font.GothamSemibold
				KeybindTitle.Text = "Keybind"
				KeybindTitle.TextColor3 = Color3.fromRGB(233, 233, 233)
				KeybindTitle.TextSize = 13.000
				KeybindTitle.TextXAlignment = Enum.TextXAlignment.Left
				KeybindValueback.Name = "KeybindValueback"
				KeybindValueback.Parent = KeybindButton
				KeybindValueback.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				KeybindValueback.BackgroundTransparency = 1.000
				KeybindValueback.Position = UDim2.new(0.862068951, 0, 0.109090909, 0)
				KeybindValueback.Size = UDim2.new(0, 50, 0, 25)
				KeybindValueback.Image = "rbxassetid://3570695787"
				KeybindValueback.ImageColor3 = Color3.fromRGB(14, 14, 14)
				KeybindValueback.ScaleType = Enum.ScaleType.Slice
				KeybindValueback.SliceCenter = Rect.new(100, 100, 100, 100)
				KeybindValueback.SliceScale = 0.050
				KeybindValue.Name = "KeybindValue"
				KeybindValue.Parent = KeybindValueback
				KeybindValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				KeybindValue.BackgroundTransparency = 1.000
				KeybindValue.Size = UDim2.new(0, 50, 0, 25)
				KeybindValue.Font = Enum.Font.GothamSemibold
				KeybindValue.Text = ". . ."
				KeybindValue.TextColor3 = Color3.fromRGB(233, 233, 233)
				KeybindValue.TextSize = 13.000
				local pressConnection
				KeybindButton.MouseButton1Click:Connect(function()
					if pressConnection then
						pressConnection:Disconnect()
					end
					KeybindValue.Text = ". . ."
					pressConnection = UserInputService.InputBegan:Connect(function(input)
						pressConnection:Disconnect()
						KeybindValue.Text = string.split(tostring(input.KeyCode), ".")[3]
						if callback then
							callback(input.KeyCode)
						end
					end)
				end)
			end
			function section:SearchBox(name, options, callback)
				sectionSize = sectionSize + 39
				tabSize = tabSize + 39
				ResizeTab()
				ResizeSection()

				local TextBoxMain = Instance.new("Frame")
				local TextBoxTitle = Instance.new("TextLabel")
				local TextBox = Instance.new("TextBox")
                --local TextBox_Roundify_5px = Instance.new("ImageLabel")
				TextBoxMain.Name = "TextBoxMain"
				TextBoxMain.Parent = SectionFrame
				TextBoxMain.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
				TextBoxMain.BorderColor3 = Color3.fromRGB(27, 42, 53)
				TextBoxMain.BorderSizePixel = 0
				TextBoxMain.Position = UDim2.new(0.018779343, 0, 0.615176141, 0)
				TextBoxMain.Size = UDim2.new(0, 390, 0, 31)
				TextBoxTitle.Name = "TextBoxTitle"
				TextBoxTitle.Parent = TextBoxMain
				TextBoxTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextBoxTitle.BackgroundTransparency = 1.000
				TextBoxTitle.Position = UDim2.new(0.0147783253, 0, 0, 0)
				TextBoxTitle.Size = UDim2.new(0, 400, 0, 31)
				TextBoxTitle.Font = Enum.Font.GothamSemibold
				TextBoxTitle.Text = name
				TextBoxTitle.TextColor3 = Color3.fromRGB(233, 233, 233)
				TextBoxTitle.TextSize = 13.000
				TextBoxTitle.TextXAlignment = Enum.TextXAlignment.Left
				TextBox.Parent = TextBoxMain
				TextBox.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
				TextBox.BackgroundTransparency = 0
				TextBox.BorderSizePixel = 0
				TextBox.Position = UDim2.new(0.270329684, 0, 0.193548381, 0)
				TextBox.Size = UDim2.new(0, 284, 0, 18)
				TextBox.ZIndex = 2
				TextBox.Font = Enum.Font.GothamSemibold
				TextBox.PlaceholderColor3 = Color3.fromRGB(66, 66, 66)
				TextBox.PlaceholderText = name
				TextBox.Text = ""
				TextBox.TextColor3 = Color3.fromRGB(233, 233, 233)
				TextBox.TextSize = 13.000
				local SearchBoxBack = Instance.new("ImageLabel")
				local ScrollingFrame = Instance.new("ScrollingFrame")
				local UIListLayout = Instance.new("UIListLayout")
				local Title = Instance.new("TextLabel")
				local Frame = Instance.new("Frame")
				SearchBoxBack.Name = "SearchBoxBack"
				SearchBoxBack.Parent = MainUITabPickedHolder
				SearchBoxBack.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SearchBoxBack.BackgroundTransparency = 1.000
				SearchBoxBack.Position = UDim2.new(0, 0, 0, 0)
				SearchBoxBack.Size = UDim2.new(0, 210, 0, 36)
				SearchBoxBack.Image = "rbxassetid://3570695787"
				SearchBoxBack.ImageColor3 = Color3.fromRGB(22, 22, 22)
				SearchBoxBack.ImageTransparency = 1
				SearchBoxBack.ScaleType = Enum.ScaleType.Slice
				SearchBoxBack.SliceCenter = Rect.new(100, 100, 100, 100)
				SearchBoxBack.SliceScale = 0.050
				SearchBoxBack.Visible = false
				SearchBoxBack.ZIndex = -4
				ScrollingFrame.Parent = SearchBoxBack
				ScrollingFrame.Active = true
				ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ScrollingFrame.BackgroundTransparency = 1.000
				ScrollingFrame.BorderSizePixel = 0
				ScrollingFrame.Position = UDim2.new(0, 0, 0, 31)
				ScrollingFrame.Size = UDim2.new(0, 210, 1, -32)
				ScrollingFrame.BottomImage = ""
				ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
				ScrollingFrame.ScrollBarThickness = 2
				ScrollingFrame.TopImage = ""
				ScrollingFrame.ZIndex = -4
				UIListLayout.Parent = ScrollingFrame
				UIListLayout.SortOrder = Enum.SortOrder.Name
				Title.Name = "Title"
				Title.Parent = SearchBoxBack
				Title.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
				Title.BackgroundTransparency = 0
				Title.Size = UDim2.new(0, 210, 0, 31)
				Title.Font = Enum.Font.GothamSemibold
				Title.Text = name
				Title.BorderSizePixel = 0
				Title.TextColor3 = Color3.fromRGB(233, 233, 233)
				Title.TextSize = 13.000
				Title.ZIndex = -4
				Frame.Parent = SearchBoxBack
				Frame.BackgroundColor3 = Color3.fromRGB(84, 116, 224)
				Frame.BorderSizePixel = 0
				Frame.Position = UDim2.new(0, 0, 0, 31)
				Frame.Size = UDim2.new(0, 210, 0, 1)
				Frame.ZIndex = -4
				local buttons = {}
				local isDone = false
				local function updateVisibles()
					local si = 33
					for i, v in next, buttons do
						if v.Visible == true then
							si = si + 30
						end
					end
					if si >= 183 then
						ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, si - 33)
						SearchBoxBack.Size = UDim2.new(0, 210, 0, 183)
					else
						ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
						SearchBoxBack.Size = UDim2.new(0, 210, 0, si)
					end
				end

				
				local function searchboxon()
					if isDone == false then
						if SearchBoxBack.Position == UDim2.new(0, 0, 0, 0) then
							SearchBoxBack.Visible = true
							tweenObject(SearchBoxBack, {
								Position = UDim2.new(1.05, 0, 0, 0)
							}, 0.4)
						end
						if #buttons == 0 then
							for i, v in next, options do
								local TextButton = Instance.new("TextButton")
								TextButton.Parent = ScrollingFrame
								TextButton.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
								TextButton.BorderSizePixel = 0
								TextButton.AutoButtonColor = false
								TextButton.Position = UDim2.new(-0.0153846154, 0, 0, 0)
								TextButton.Size = UDim2.new(0, 215, 0, 30)
								TextButton.Font = Enum.Font.GothamSemibold
								TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
								TextButton.TextSize = 14.000
								TextButton.Text = v
								TextButton.ZIndex = -4
								TextButton.Visible = false
								table.insert(buttons, TextButton)
								TextButton.MouseEnter:Connect(function()
									tweenObject(TextButton, {
										BackgroundColor3 = Color3.fromRGB(77, 77, 77)
									}, 0.2)
								end)
								TextButton.MouseLeave:Connect(function()
									tweenObject(TextButton, {
										BackgroundColor3 = Color3.fromRGB(22, 22, 22)
									}, 0.2)
								end)
								TextButton.MouseButton1Click:Connect(function()
									isDone = true
									TextBox.Text = v
									if callback then
										callback(v)
									end
									local tw = tweenObject(SearchBoxBack, {
										Position = UDim2.new(0, 0, 0, 0)
									}, 0.4)
									tw.Completed:wait()
									SearchBoxBack.Visible = false
									for i, v in next, buttons do
										v:Destroy()
										buttons[i] = nil
									end
									isDone = false
								end)
							end
						end
						updateVisibles()
						for i, v in pairs(buttons) do
							if string.sub(string.lower(v.Text), 1, string.len(TextBox.Text)) == string.lower(TextBox.Text) then
								if v.Visible == false then
									spawn(function()
										v.Visible = true
										updateVisibles()
										tweenObject(v, {
											TextTransparency = 0
										}, 0.2)
										tweenObject(v, {
											BackgroundTransparency = 0
										}, 0.2)
									end)
								end
							else
								if v.Visible == true then
									spawn(function()
										local tw = tweenObject(v, {
											TextTransparency = 1
										}, 0.2)
										tweenObject(v, {
											BackgroundTransparency = 0
										}, 0.2)
										tw.Completed:wait(0.1)
										v.Visible = false
										updateVisibles()
									end)
								end
							end
						end
					end
				end
				TextBox.Focused:Connect(searchboxon)
				TextBox.FocusLost:Connect(function(a)
					if a then
						isDone = true
						local tw = tweenObject(SearchBoxBack, {
							Position = UDim2.new(0, 0, 0, 0)
						}, 0.4)
						tw.Completed:wait()
						SearchBoxBack.Visible = false
						for i, v in next, buttons do
							v:Destroy()
							buttons[i] = nil
						end
						isDone = false
					end
				end)
				TextBox:GetPropertyChangedSignal("Text"):Connect(searchboxon)
				local searchbox = {}
				function searchbox:Update(val)
					if table.find(options, val) then 
						TextBox.Text = val
					end
				end
				return searchbox
			end
			function section:PlusMinus(name, options, callback)
				sectionSize = sectionSize + 39
				tabSize = tabSize + 39
				ResizeTab()
				ResizeSection()
				local LabelBack = Instance.new("Frame")
				local PlusMinus = Instance.new("TextLabel")
				local TextButton = Instance.new("TextButton")
				local TextLabel = Instance.new("TextBox")
				local TextButton_2 = Instance.new("TextButton")

				LabelBack.Name = "LabelBack"
				LabelBack.Parent = SectionFrame
				LabelBack.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
				LabelBack.BorderSizePixel = 0
				LabelBack.Position = UDim2.new(0.018779343, 0, 0.233062327, 0)
				LabelBack.Size = UDim2.new(0, 390, 0, 31)

				PlusMinus.Name = "PlusMinus"
				PlusMinus.Parent = LabelBack
				PlusMinus.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				PlusMinus.BackgroundTransparency = 1.000
				PlusMinus.Position = UDim2.new(0.0147783253, 0, 0, 0)
				PlusMinus.Size = UDim2.new(0, 400, 0, 31)
				PlusMinus.Font = Enum.Font.GothamSemibold
				PlusMinus.Text = name
				PlusMinus.TextColor3 = Color3.fromRGB(233, 233, 233)
				PlusMinus.TextSize = 13.000
				PlusMinus.TextXAlignment = Enum.TextXAlignment.Left

				TextButton.Parent = LabelBack
				TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextButton.BackgroundTransparency = 1.000
				TextButton.Position = UDim2.new(0.911772251, 0, 0, 0)
				TextButton.Size = UDim2.new(0, 31, 0, 31)
				TextButton.Font = Enum.Font.Gotham
				TextButton.Text = "+"
				TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextButton.TextSize = 14.000

				TextLabel.Parent = LabelBack
				TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.BackgroundTransparency = 1.000
				TextLabel.Position = UDim2.new(0.679487169, 0, 0, 0)
				TextLabel.Size = UDim2.new(0, 90, 0, 31)
				TextLabel.Font = Enum.Font.Gotham
				TextLabel.Text = "0"
				TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.TextSize = 14.000

				TextButton_2.Parent = LabelBack
				TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextButton_2.BackgroundTransparency = 1.000
				TextButton_2.Position = UDim2.new(0.598951697, 0, 0, 0)
				TextButton_2.Size = UDim2.new(0, 31, 0, 31)
				TextButton_2.Font = Enum.Font.Gotham
				TextButton_2.Text = "+"
				TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextButton_2.TextSize = 14.000
			end
			return section
		end
		return tab
	end
	return window
end
print("here")
for i,v in pairs(getconnections(game.Players.LocalPlayer.Idled)) do 
    v:Disable()
end
print("here1")
local Win = library:Window("Rocket", "Thang")
local Autofarm = Win:Tab("Autofarm Stuff")
local AutofarmSection = Autofarm:Section("Autofarm Item Stuff")
local AutofarmSectionRocket = Autofarm:Section("Autofarm Rocket Stuff")

local doAutofarmFuel = false
local doUpgradeScoop = false
local doUpgradeRocket = false
local doUpgradeBackpack = false
AutofarmSection:Toggle("Autofarm Fuel", false, function(value)
    doAutofarmFuel = value
end)
AutofarmSection:Toggle("Auto Upgrade Scoop", false, function(value)
    doUpgradeScoop = value
end)
AutofarmSection:Toggle("Auto Upgarde Backpack", false, function(value)
    doUpgradeBackpack = value
end)
AutofarmSection:Toggle("Auto Upgarde Rocket", false, function(value)
    doUpgradeRocket = value
end)

local doAutolaunch = false
local LaunchRocketAtFuel = 1000
AutofarmSectionRocket:Toggle("Auto Launch Rocket", false, function(value)
    doAutolaunch = value
end)
AutofarmSectionRocket:Box("Launch At Fuel", function(value)
    LaunchRocketAtFuel = tonumber(value)
end)

local OwnerTable = {Owner = false, Plot}
coroutine.wrap(function()
	while wait() do
		OwnerTable = {Owner = false, Plot}
		for i,v in next, workspace:GetChildren() do
			if v.Name == "Launchpad" then
				if v.ClaimBase.Transparency == 0 then
					OwnerTable.Plot = v
				end
				if tostring(v.Values.Owner.Value) == game.Players.LocalPlayer.Name then
					OwnerTable.Owner = true
					OwnerTable.Plot = v
				end
			end
		end
		if not OwnerTable.Owner then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OwnerTable.Plot.ClaimBase.CFrame
		end
		wait(1)
	end
end)()

local function GetItemNum(table, look)
    local num = 0
    for i,v in next, table:GetChildren() do
        if v.Name:lower():find(look) and v.Value then
            num = num + 1
        end
    end
    return num - 1
end

coroutine.wrap(function()
    while wait() do
        if doUpgradeScoop or doUpgradeBackpack or doUpgradeRocket then
            local FuelNumbers = GetItemNum(game.Players.LocalPlayer.FuelScoops, "has")
            local BackNumbers = GetItemNum(game.Players.LocalPlayer.Backpacks, "has")
            local RocketNumbers = GetItemNum(game.Players.LocalPlayer.Rockets, "has")
            if doUpgradeScoop and FuelNumbers ~= 10 then
                game.ReplicatedStorage.BuyFuelScoop:InvokeServer("FuelScoop", FuelNumbers + 1)
            end
            if doUpgradeBackpack and BackNumbers ~= 10 then
                game.ReplicatedStorage.BuyItem:InvokeServer("Backpack", BackNumbers + 1)
            end
            if doUpgradeRocket and RocketNumbers ~= 9 then
                game.ReplicatedStorage.BuyRocket:InvokeServer("Rocket", RocketNumbers + 1)
            end
            if game.Players.LocalPlayer.FuelScoops.EquippedFuelScoop.Value ~= "FuelScoop" .. tostring(FuelNumbers) then
                game.ReplicatedStorage.EquipFuelScoop:InvokeServer("FuelScoop", FuelNumbers)
            end
            if game.Players.LocalPlayer.Backpacks.EquippedBackpack.Value ~= "Backpack" .. tostring(BackNumbers) then
                game.ReplicatedStorage.EquipItem:InvokeServer("Backpack", BackNumbers)
            end
            if game.Players.LocalPlayer.Rockets.EquippedRocket.Value ~= "Rocket" .. tostring(RocketNumbers) then
                game.ReplicatedStorage.EquipRocket:InvokeServer("Rocket", RocketNumbers)
            end
        end
        if doAutolaunch then
            if tonumber(OwnerTable.Plot.FuelCollector.Sign.Amount.SurfaceGui.TextLabel.Text) > LaunchRocketAtFuel then
                warn(OwnerTable.Plot.FuelCollector.Sign.Amount.SurfaceGui.TextLabel.Text)
                fireclickdetector(OwnerTable.Plot.LaunchStation.LaunchButton.ClickDetector, 1)
            end
        end
    end
end)()

local function GetFuel()
    for i,v in next, workspace.Fuel:GetChildren() do
        v.CanCollide = false
        if tonumber(v.Fuel.Value) ~= 0 then
            return v
        end
    end
end

while wait() do
    if doAutofarmFuel then
        local BackpackValues = string.split(game.Players.LocalPlayer.PlayerGui.ScreenGui.Backpack.Backpack.Text, "/")
        local Backpack = {tostring(string.gsub(BackpackValues[1], " ", "")), tostring(string.gsub(BackpackValues[2], " ", ""))}
        if Backpack[1] ~= Backpack[2] then
            local closest = GetFuel()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = closest.CFrame * CFrame.new(-1,2,4)
            BackpackValues = string.split(game.Players.LocalPlayer.PlayerGui.ScreenGui.Backpack.Backpack.Text, "/")
            Backpack = {tostring(string.gsub(BackpackValues[1], " ", "")), tostring(string.gsub(BackpackValues[2], " ", ""))}
            if not game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
                game.Players.LocalPlayer.Backpack:FindFirstChildWhichIsA("Tool").Parent = game.Players.LocalPlayer.Character
            else
                game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):Activate()
            end
            if Backpack[1] == Backpack[2] or not doAutofarmFuel then
                break
            end
        else
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OwnerTable.Plot.FuelCollector.CollectorPad.CFrame
        end
    end
end