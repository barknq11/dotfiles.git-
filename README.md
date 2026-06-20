# 1. Clone your dotfiles
git clone https://github.com/barknq11/dotfiles.git ~/dotfiles

# 2. Symlink your configs
ln -sf ~/dotfiles/.config/hypr/hyprland.lua ~/.config/hypr/hyprland.lua
ln -sf ~/dotfiles/.config/hypr/update-colors.sh ~/.config/hypr/update-colors.sh

# 3. Install dependencies the script needs
sudo pacman -S python-pywal inotify-tools
yay -S matugen

# 4. Make the script executable
chmod +x ~/.config/hypr/update-colors.sh
