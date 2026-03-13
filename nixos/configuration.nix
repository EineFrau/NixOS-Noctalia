# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).
{
  config,
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
    ./noctalia.nix
    ./programs.nix
    ./services.nix
    ./nix.nix
    ./networking.nix
    ./sddm.nix
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.plymouth.enable = true;
  time.timeZone = "Europe/Bratislava";
  users.users.modezy = {
    isNormalUser = true;
    shell = pkgs.fish;
    extraGroups = ["wheel"];
    packages = with pkgs; [
      #tree
    ];
  };
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    configPackages = [pkgs.xdg-desktop-portal-wlr];
    extraPortals = [
      pkgs.xdg-desktop-portal-wlr
    ];
  };
  environment.systemPackages = with pkgs; [
    vim
    wget
    flatpak
    home-manager
    fish
    gcc
    clang
    cl
    zig
    cmake
    gpu-screen-recorder
    xwayland-satellite
    xdg-desktop-portal-wlr
    kitty
  ];
  system.stateVersion = "25.05";
}
