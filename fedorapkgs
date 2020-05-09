#!/bin/bash

# Installs a few essential things for a fresh fedora install

# Make sure dnf exists
command -v dnf >/dev/null 2>&1
if [ $? -gt 0 ]; then
	echo "You do not have dnf installed, cannot continue"
	exit
fi

# A few of these i do not really use, but they are nice-to-haves just in case
sudo dnf install gcc gcc-c++ make golang code neovim git zsh \
			util-linux-user stow discord mopidy mopidy-spotify yarn nodejs \
			libdvdcss htop vlc ffmpeg ImageMagick GraphicsMagick clang \
			jq bat ripgrep


# Install multimedia packages
sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin

# Install sound-and-video complement packages
# (I'm not 100% sure but these are used by firefox)
sudo dnf groupupdate sound-and-video

# Mopidy Iris GUI
# =========
# I know running pip with sudo is stupid
# but I don't know how to globally install a python package
# I could install it with --user, but if it won't work if i try to run mopidy as a service (which i am doing rn)
# TODO: Make Mopidy-MPRIS actually work on GNOME 3.36
# TODO: add the pulseaudio TCP config and the mopidy config somehow so i dont run into no-audio problems
# 		on mopidy on the next fedora installs
sudo python3 -m pip install Mopidy-Iris Mopidy-MPRIS 


# Change shell since we installed zsh

chsh -s /bin/zsh

echo "Don't forget to stow what you want!"
