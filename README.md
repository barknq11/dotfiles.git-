# Dotfiles

## Setup on a new system

### 1. Clone the repo
git clone https://github.com/barknq11/dotfiles.git ~/dotfiles

### 2. Symlink configs
ln -sf ~/dotfiles/.config/hypr/hyprland.lua ~/.config/hypr/hyprland.lua
ln -sf ~/dotfiles/.config/hypr/update-colors.sh ~/.config/hypr/update-colors.sh

##3
## Dependencies

### Core Hyprland
sudo pacman -S hyprland hyprpaper hypridle hyprpolkitagent xdg-desktop-portal-hyprland uwsm

### Display & Audio
sudo pacman -S pipewire pipewire-alsa pipewire-pulse pipewire-jack wireplumber

### Status Bar & Launcher
sudo pacman -S rofi dunst quickshell

### Wallpaper & Color Theming
sudo pacman -S python-pywal inotify-tools
yay -S matugen

### Screenshot
sudo pacman -S grim slurp wl-clipboard

### Terminal & Fonts
sudo pacman -S foot ttf-jetbrains-mono-nerd

### Brightness & Display Control
sudo pacman -S ddcutil i2c-tools

### Networking & Bluetooth
sudo pacman -S networkmanager network-manager-applet bluez bluez-utils

### GPU (AMD)
sudo pacman -S vulkan-radeon xf86-video-amdgpu

### Shell
sudo pacman -S zsh zsh-completions

### Utilities
sudo pacman -S git wget rsync bat fastfetch htop nano vim wl-clipboard ntfs-3g

### DMS Shell
yay -S dms-shell-hyprland dkms

### File Managers
sudo pacman -S thunar
### Media & Entertainment
sudo pacman -S firefox haruna vlc obs-studio
sudo pacman -S yt-dlp

### System Tools
sudo pacman -S gnome-disk-utility partitionmanager lact mangojuice htop mission-center smartmontools

### Image & Thumbnails
sudo pacman -S loupe ffmpegthumbnailer tumbler

### Gaming
sudo pacman -S steam dkms
sudo pacman -S faugus-launcher protontricks
sudo pacman -S 

### Communication
sudo pacman -S telegram-desktop discord


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
