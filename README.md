# Hammerspoon App Switcher Config

A minimal **Hammerspoon** configuration that provides a fast keyboard-driven **application launcher / switcher** using a modal hotkey.

Press **`Ctrl + S`**, then a letter to instantly launch or focus an application.

This setup is designed to be simple, fast, and easy to customize.

---

## How It Works

This config creates a **modal keybinding** in Hammerspoon.

1. Press **`Ctrl + S`** to activate the modal.
2. Press the corresponding **letter key** for the application you want.
3. The app will **launch or focus**.
4. The modal **automatically exits** after the action runs.

Example:

```

Ctrl + S, then G → Opens Google Chrome
Ctrl + S, then F → Opens kitty terminal
Ctrl + S, then C → Opens VS Code

````

If you press **Escape**, the modal exits without doing anything.

---

## Default Keybindings

| Key | Application |
|----|----|
| `E` | Finder |
| `F` | kitty (terminal) |
| `B` | Sublime Text |
| `G` | Google Chrome |
| `S` | Slack |
| `M` | Messages |
| `D` | Discord |
| `C` | Visual Studio Code |
| `X` | Xcode |
| `O` | RustRover |
| `L` | GoLand |
| `T` | PhpStorm |
| `R` | Reload Hammerspoon config |

---

## Installation

### 1. Install Hammerspoon

Download and install:

https://www.hammerspoon.org/

Move it to your **Applications** folder and launch it.

---

### 2. Install the Config

Clone this repo or copy the config file:

```bash
git clone https://github.com/dustinbowers/hammerspoon-config.git
````

Then copy the file to:

```
~/.hammerspoon/init.lua
```

If you already have an `init.lua`, merge the contents.

---

### 3. Reload the Configuration

You can reload Hammerspoon in two ways:

**Option 1 (Keyboard shortcut):**

```
Ctrl + S, then R
```

**Option 2 (Menu bar):**

Click the **Hammerspoon icon → Reload Config**

---

## Customizing Apps

Applications are mapped using the helper function:

```lua
bindAppKey(as, "g", function()
    hs.application.launchOrFocus("Google Chrome")
end)
```

To add a new app:

```lua
bindAppKey(as, "p", function()
    hs.application.launchOrFocus("Spotify")
end)
```

Just replace `"Spotify"` with the **exact macOS application name**.

---

## Features

* Fast **keyboard-driven app switching**
* Uses **modal keybinding** to avoid global shortcut conflicts
* **Automatically exits modal** after launching an app
* **Single file config**
* Easy to customize
