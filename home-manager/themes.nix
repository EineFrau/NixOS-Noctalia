{ pkgs, ... }:
let
    furina = pkgs.fetchFromGitHub {
            owner = "modeffz";
            repo = "furina-cursor";
            rev = "main";
            sha256 = "sha256-AU6m5kxhc0vz+zTJl4VkzPptk1dUDUPHYe7X+E2/uNE=";
    };
    installConfig = builtins.fetchGit {
            url = "https://github.com/modeffz/configs";
            ref = "main";
    };
in 
{
    home.pointerCursor = {
            name = "Furina-v2";
            size = 32;
            package = pkgs.runCommand "furina-cursor-theme" {} ''
                mkdir -p $out/share/icons
                cp -r ${furina}/Furina-v2 $out/share/icons
            '';
    };
    /*home.file.".config/hypr" = {
            source = "${installConfig}/hypr";
            recursive = true;
    };
    home.file.".config/hyprpanel" = {
            source = "${installConfig}/hyprpanel";
            recursive = true;
    };
    home.file.".config/kitty" = {
            source = "${installConfig}/kitty";
            recursive = true;
    };
    home.file.".config/rofi" = {
            source = "${installConfig}/rofi";
            recursive = true;
    };
    home.file.".config/nvim" = {
            source = "${installConfig}/nvim";
            recursive = true; 
    };
    home.file.".config/fastfetch" = {
            source = "${installConfig}/fastfetch";
            recursive = true;
    };*/

    home.packages = [
        pkgs.papirus-icon-theme
        pkgs.dracula-theme
    ];

    gtk = {
        enable = true;
        /*theme = {
                name = "Dracula";
                package = pkgs.dracula-theme;
        };*/
        iconTheme = {
            name = "Papirus";
            package = pkgs.papirus-icon-theme;
        };
        cursorTheme = {
                name = "Furina-v2";
                size = 32;
        };
    };
}

