# NO SHEBANG

# Make Windows users' profile(home folder) more like XDG(freedesktop.org Cross-Desktop Group)
# 让 Windows 的用户文件夹更像 freedesktop.org XDG 标准
#
# Link ~/AppData/Local to ~/.config
New-Item -ItemType SymbolicLink `
    -Target  "$HOME/AppData/Local" `
    -Path    "$HOME/.config"
# Link ~/AppData/Local to ~/.config.local
New-Item -ItemType SymbolicLink `
    -Target  "$HOME/AppData/Local" `
    -Path    "$HOME/.config.local"
# Link ~/AppData/Roaming to ~/.config.roaming
New-Item -ItemType SymbolicLink `
    -Target  "$HOME/AppData/Roaming" `
    -Path    "$HOME/.config.roaming"
