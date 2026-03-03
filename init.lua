-- Create a new modal
as = hs.hotkey.modal.new("ctrl", "s")

-- Function to bind keys to applications
local function bindAppKey(modal, key, action)
	modal:bind({}, key, function()
		action()
		modal:exit() -- Exit modal after selecting an action
	end)
end

-- Bind keys to applications
bindAppKey(as, "e", function()
	hs.application.launchOrFocus("Finder")
end)
bindAppKey(as, "f", function()
	hs.application.launchOrFocus("kitty")
end)
bindAppKey(as, "b", function()
	hs.application.launchOrFocus("Sublime Text")
end)
-- bindAppKey(as, "p", function()
-- 	hs.application.launchOrFocus("Spotify")
-- end)

bindAppKey(as, "g", function()
	hs.application.launchOrFocus("Google Chrome")
end)
bindAppKey(as, "x", function()
	hs.application.launchOrFocus("Firefox")
end)

bindAppKey(as, "s", function()
	hs.application.launchOrFocus("Slack")
end)
bindAppKey(as, "m", function()
	hs.application.launchOrFocus("Messages")
end)
bindAppKey(as, "d", function()
	hs.application.launchOrFocus("Discord")
end)

bindAppKey(as, "c", function()
	hs.application.launchOrFocus("Visual Studio Code")
end)
bindAppKey(as, "x", function()
	hs.application.launchOrFocus("Xcode")
end)
bindAppKey(as, "o", function()
	hs.application.launchOrFocus("RustRover")
end)
bindAppKey(as, "l", function()
	hs.application.launchOrFocus("GoLand")
end)
bindAppKey(as, "t", function()
	hs.application.launchOrFocus("PhpStorm")
end)

-- Reload Hammerspoon Config (`Ctrl-S + R`)
bindAppKey(as, "r", function()
	hs.alert.show("Reloading Hammerspoon...")
	hs.reload()
end)

-- -- Show alert when activating the app switcher
-- as.entered = function()
-- 	hs.alert.show("App Switcher: g=Chrome, s=Sublime, m=Messages, d=Discord, r=Reload")
-- end

-- Exit modal if any other key is pressed
as.exited = function()
	hs.alert.closeAll() -- Clear any alerts
end

-- Exit the modal if Escape is pressed
as:bind({}, "escape", function()
	as:exit()
end)

----------------
----------------
----------------

-- require("poe")
