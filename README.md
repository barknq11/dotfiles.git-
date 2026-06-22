# Dotfiles

## Setup on a new system

### 1. Clone the repo
git clone https://github.com/barknq11/dotfiles.git ~/dotfiles

### 2. Symlink configs
ln -sf ~/dotfiles/.config/hypr/hyprland.lua ~/.config/hypr/hyprland.lua
ln -sf ~/dotfiles/.config/hypr/update-colors.sh ~/.config/hypr/update-colors.sh

### 3. Install dependencies
sudo pacman -S python-pywal inotify-tools grim slurp wl-clipboard
yay -S matugen

### 4. Make scripts executable
chmod +x ~/.config/hypr/update-colors.sh

### 5. Create screenshots folder
mkdir -p ~/Pictures/Screenshots

## How to save changes to GitHub

Whenever you change any config file run these 3 commands:

git add .
git commit -m "describe what you changed"
git push

## Keybinds
- SUPER + W — sync border and terminal colors to wallpaper
- SUPER + SHIFT + S — screenshot selection, saves to ~/Pictures/Screenshots and copies to clipboard
