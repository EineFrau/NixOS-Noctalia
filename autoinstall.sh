#!/usr/bin/env bash

if [[ $EUID -ne 0 ]]; then
    echo "This script requires root privileges."
    exec sudo "$0" "$@"
fi

USER_HOME=$(eval echo ~${SUDO_USER})

mkdir -p ./backup

echo "Backing up configuration.."
mv /etc/nixos/configuration.nix ./backup/

echo "Installing NixOS config.."
cp -rf ./nixos/* /etc/nixos/

echo "Installing Home Manager config.."
cp -rf ./home-manager "$USER_HOME/.config/"

echo "Rebuilding system.."
nixos-rebuild switch

echo "Home-manager setup.."
home-manager switch

echo "Installation complete :3"
