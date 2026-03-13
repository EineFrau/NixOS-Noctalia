{ config, pkgs, inputs, ... }:
{
    home.packages = with pkgs; [
        hyprpanel
        hypridle
        hyprshot
        hyprpaper
        hyprpicker
        hyprlock
        hyprcursor

        rofi
        fuzzel
        wofi
        matugen
        ffmpeg
        shared-mime-info
        hicolor-icon-theme
        qt6.qtmultimedia
        libnotify
        bluez
        jq
        eww
        inputs.quickshell.packages.${pkgs.system}.default
        inputs.noctalia.packages.${pkgs.system}.default
        wl-clipboard
        
        loupe
        nemo
        gedit
        celluloid
        file-roller
        pavucontrol
        alacritty

        nix-prefetch-scripts
    ];
}
