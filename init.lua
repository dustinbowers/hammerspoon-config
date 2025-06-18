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
bindAppKey(as, "f", function()
	hs.application.launchOrFocus("iTerm2")
end)
bindAppKey(as, "g", function()
	hs.application.launchOrFocus("Google Chrome")
end)
bindAppKey(as, "x", function()
	hs.application.launchOrFocus("Firefox")
end)
bindAppKey(as, "b", function()
	hs.application.launchOrFocus("Sublime Text")
end)
bindAppKey(as, "c", function()
	hs.application.launchOrFocus("Visual Studio Code")
end)
bindAppKey(as, "m", function()
	hs.application.launchOrFocus("Messages")
end)
bindAppKey(as, "d", function()
	hs.application.launchOrFocus("Discord")
end)
bindAppKey(as, "p", function()
	hs.application.launchOrFocus("Spotify")
end)
bindAppKey(as, "o", function()
	hs.application.launchOrFocus("RustRover")
end)

-- **New Shortcut**: Reload Hammerspoon Config (`Ctrl-S + R`)
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
