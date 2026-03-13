{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./nvim.nix
    ./code.nix
    ./terminal.nix
    ./programms.nix
    ./sys-soft.nix
    ./fonts.nix
    ./themes.nix
    ./KaliNix.nix
    ./caelestia.nix
    ./nvim/ui.nix
    ./nvim/lsp.nix
    ./nvim/noice.nix
    ./nvim/default.nix
    ./nvim/neotree.nix
    ./nvim/settings.nix
    ./nvim/autopairs.nix
    ./nvim/statusline.nix
    ./nvim/treesitter.nix
    ./nvim/autocomplete.nix
    ./nvim/telescope.nix
  ];
  nixpkgs.config.allowUnfree = true;
  home.username = "modezy";
  home.homeDirectory = "/home/modezy";
  home.stateVersion = "25.05";
  home.enableNixpkgsReleaseCheck = false;
  programs.home-manager.enable = true;
  nixpkgs.config.permittedInsecurePackages = [
    "mbedtls-2.28.10"
    "python3.12-ecdsa-0.19.1"
  ];
  nixpkgs.config.allowBroken = true;
  nixpkgs.config.segger-jlink.acceptLicense = true;
}
