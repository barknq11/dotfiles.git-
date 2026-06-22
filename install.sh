#!/bin/bash

# Dotfiles Install Script for Arch Linux + Hyprland
# github.com/barknq11/dotfiles

set -e

echo "==> Installing yay AUR helper..."
if ! command -v yay &> /dev/null; then
    sudo pacman -S --needed git base-devel
    git clone https://aur.archlinux.org/yay-bin.git /tmp/yay-bin
    cd /tmp/yay-bin && makepkg -si --noconfirm
    cd ~
else
    echo "yay already installed, skipping."
fi

echo "==> Installing core Hyprland..."
sudo pacman -S --needed --noconfirm \
    hyprland hyprpaper hypridle hyprpolkitagent \
    xdg-desktop-portal-hyprland uwsm

echo "==> Installing display & audio..."
sudo pacman -S --needed --noconfirm \
    pipewire pipewire-alsa pipewire-pulse pipewire-jack wireplumber

echo "==> Installing status bar & launchers..."
sudo pacman -S --needed --noconfirm rofi dunst
yay -S --needed --noconfirm quickshell

echo "==> Installing wallpaper & color theming..."
sudo pacman -S --needed --noconfirm python-pywal inotify-tools
yay -S --needed --noconfirm matugen

echo "==> Installing screenshot tools..."
sudo pacman -S --needed --noconfirm grim slurp wl-clipboard

echo "==> Installing terminal & fonts..."
sudo pacman -S --needed --noconfirm foot ttf-jetbrains-mono-nerd

echo "==> Installing brightness & display control..."
sudo pacman -S --needed --noconfirm ddcutil i2c-tools

echo "==> Installing networking & bluetooth..."
sudo pacman -S --needed --noconfirm \
    networkmanager network-manager-applet bluez bluez-utils

echo "==> Installing AMD GPU drivers..."
sudo pacman -S --needed --noconfirm vulkan-radeon xf86-video-amdgpu

echo "==> Installing shell..."
sudo pacman -S --needed --noconfirm zsh zsh-completions

echo "==> Installing utilities..."
sudo pacman -S --needed --noconfirm \
    git wget rsync bat fastfetch htop nano vim wl-clipboard ntfs-3g

echo "==> Installing DMS shell..."
yay -S --needed --noconfirm dms-shell-hyprland dkms

echo "==> Installing file managers..."
sudo pacman -S --needed --noconfirm thunar

echo "==> Installing media & entertainment..."
sudo pacman -S --needed --noconfirm firefox haruna vlc obs-studio yt-dlp

echo "==> Installing system tools..."
sudo pacman -S --needed --noconfirm \
    gnome-disk-utility partitionmanager smartmontools
yay -S --needed --noconfirm lact mangojuice mission-center

echo "==> Installing image & thumbnails..."
sudo pacman -S --needed --noconfirm loupe ffmpegthumbnailer tumbler

echo "==> Installing gaming..."
sudo pacman -S --needed --noconfirm steam
yay -S --needed --noconfirm faugus-launcher protontricks

echo "==> Installing communication..."
sudo pacman -S --needed --noconfirm telegram-desktop discord

echo "==> Symlinking configs..."
mkdir -p ~/.config/hypr
ln -sf ~/dotfiles/.config/hypr/hyprland.lua ~/.config/hypr/hyprland.lua
ln -sf ~/dotfiles/.config/hypr/update-colors.sh ~/.config/hypr/update-colors.sh

echo "==> Making scripts executable..."
chmod +x ~/.config/hypr/update-colors.sh

echo "==> Creating screenshots folder..."
mkdir -p ~/Pictures/Screenshots

echo "==> Adding yourself to i2c group for brightness control..."
sudo usermod -aG i2c $USER

echo ""
echo "✓ All done! Please reboot your system."
echo "  Then clone your dotfiles and run this script on any new Arch install."
