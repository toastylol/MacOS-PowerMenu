# PowerMenu for MacOS

a lightweight, native macos power menu that brings back the quick, customizable global shutdown prompt (similar to windows/linux), bypassing the hardware limitations of touch id macs.

<div align="center">
<img width="452" height="311" alt="Screenshot 2026-07-21 at 06 26 12" src="https://github.com/user-attachments/assets/30b76749-fbec-43c1-964c-a4f7d8b94fe4" />
</div>

## the problem
on newer macbooks and desktop keyboards featuring touch id, apple disabled the traditional hardware power shortcuts (like `Control + Power` or `Option + Command + Power`) to prevent accidental shutdowns. there is no built-in way to summon a quick graphical prompt to sleep, restart, or shut down using a keyboard shortcut.

## the solution
PowerMenu provides a zero-friction, fully native replacement. it consists of three parts:
1. **PowerMenu.app:** a compiled applescript that triggers standard finder power actions.
2. **PowerMenu.shortcut:** a pre-configured macos shortcut workflow to bridge the app to the global input registry.
3. **install.command:** a bash script that automates the installation, bypassing apple's quarantine and automatically prompting the user to assign their desired hotkey.

## features
- **native ui:** uses standard macos dialogs.
- **keyboard navigable:** select options with arrow keys.
- **secure:** prompts applications to gracefully save work before closing.
- **frictionless install:** automated `.command` script handles permissions and file routing.

---

## how to modify / develop
if you want to change the menu options or behavior:
1. right-click `PowerMenu.app` and select **Show Package Contents**.
2. navigate to `Contents/Resources/Scripts/` and open `main.scpt` in the macos script editor.
3. edit the applescript list arrays or shell scripts.
4. save the file and re-run the application.
