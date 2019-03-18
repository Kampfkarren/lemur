local names = {
	"AnalyticsService",
	"BindableEvent",
	"BindableFunction",
	"BoolValue",
	"Camera",
	"CollectionService",
	"Configuration",
	"ContentProvider",
	"CoreGui",
	"CorePackages",
	"Folder",
	"Frame",
	"Game",
	"GuiButton",
	"GuiObject",
	"GuiService",
	"HttpService",
	"Humanoid",
	"ImageButton",
	"ImageLabel",
	"IntValue",
	"LocalizationService",
	"LocalizationTable",
	"LocalScript",
	"Model",
	"ModuleScript",
	"NotificationService",
	"NumberValue",
	"ObjectValue",
	"ParticleEffect",
	"Player",
	"Players",
	"ReplicatedStorage",
	"RunService",
	"ScreenGui",
	"Script",
	"ScrollingFrame",
	"ServerScriptService",
	"ServerStorage",
	"Stats",
	"StringValue",
	"TestService",
	"TextButton",
	"TextLabel",
	"TextService",
	"TweenService",
	"UIGridStyleLayout",
	"UIListLayout",
	"UIPadding",
	"UITextSizeConstraint",
	"UserInputService",
	"VirtualInputManager",
	"Workspace",
}

local instances = {}

for _, name in ipairs(names) do
	instances[name] = import("./" .. name)
end

return instances