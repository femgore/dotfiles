# this repository will never be updated. this is my full personal rice + configuration as of December 4th 2023.
plus this is purely for arch linux + hyprland so idk if the other shit will work for yall




# installation
## first, install dependencies:
Hyprland
```
hyprland xdg-desktop-portal-hyprland xorg-xwayland qt5-wayland qt6-wayland qt5ct qt6ct libva linux-headers 
```
if ur on nvidia also install
```
libva-nvidia-driver-git
```
Pipewire
```
pipewire pipewire-alsa pipewire-pulse pipewire-jack pavucontrol wireplumber
```
Components
```
ripgrep playerctl gradience-git adw-gtk3-git jq eww-tray-wayland-git \
polkit-gnome swww gtklock pamixer grimblast-git gnome-control-center \
kitty dolphin xdg-user-dirs \
wf-recorder dbus-python python-gobject python-requests python-jinja \
python-material-color-utilities zenity socat hyprpicker-git
```
fonts and icons
```
ttf-jetbrains-mono ttf-nerd-fonts-symbols papirus-icon-theme
```

# clone repo and configs
```
git clone https://github.com/linkfrg/dotfiles.git
cp -R dotfiles/.config/* ~/.config/
```
# Setup gtk theme icon theme n font
```
gsettings set org.gnome.desktop.interface gtk-theme adw-gtk3
gsettings set org.gnome.desktop.interface icon-theme Papirus
gsettings set org.gnome.desktop.interface font-name "JetBrains Mono Regular 11"
```

# Enable pipewire
```
systemctl --user enable --now pipewire.service pipewire.socket pipewire-pulse.service wireplumber.service
```

# User dirs
```
LC_ALL=C xdg-user-dirs-update --force
```
