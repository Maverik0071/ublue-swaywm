FROM ghcr.io/ublue-os/base-main:latest

## Nvidia users use this instead
# FROM ghcr.io/ublue-os/base-nvidia:latest


## Install a Desktop
# Use `dnf5 group list` to see possible group packages to install, or choose them individually

# RUN dnf5 group install kde-desktop kde-apps

## Install applications
# Anything in Fedora

RUN dnf5 install vlc neovim git i3 i3-gaps i3lock i3status rofi dmenu feh nitrogen volumeicon pasystray tlp ranger

## Add COPRs
# RUN dnf copr enable (copr-author/name)
# RUN dnf5 install thing-from-copr

## Manage services
systemctl enable docker.service
systemctl enable tlp.service
