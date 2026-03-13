{
  config,
  lib,
  pkgs,
  ...
}: {
  services = {
    blueman.enable = true;
    pipewire = {
      enable = true;
      pulse.enable = true;
      wireplumber.enable = true;
      alsa.enable = true;
    };
    gvfs.enable = true;
    udisks2.enable = true;
    flatpak.enable = true;
    xserver = {
      enable = true;
      desktopManager = {
        xfce.enable = true;
      };
    };
    displayManager.sddm = {
      enable = true;
      wayland.enable = true;
    };
    dbus.enable = true;
    keyd = {
      enable = true;
      keyboards.default = {
        ids = ["*"];
        settings = {
          main = {
            capslock = "layer(symbols)";
          };
          symbols = {
            comma = "102nd";
            dot = "S-102nd";
          };
        };
      };
    };
  };
}
