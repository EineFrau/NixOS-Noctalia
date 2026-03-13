{ config, pkgs, ... }:
{
    home.packages = with pkgs; [
       krita
       sqlitebrowser
       discord
       libreoffice-qt6
       spotify
       filezilla
       obsidian
       obs-studio
       steam
       calc
       cmatrix
       tty-clock
       evince
       telegram-desktop
       ibus-engines.typing-booster
       appimage-run
       dms
       dgop
    ];
}
