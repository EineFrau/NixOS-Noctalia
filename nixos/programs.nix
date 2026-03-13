{
  config,
  lib,
  pkgs,
  ...
}: {
  programs = {
    command-not-found.enable = true;
    fish.enable = true;
    firefox.enable = true;
    xwayland.enable = true;
    niri.enable = true;
    dconf.enable = true;
    steam.enable = true;
  };
}
