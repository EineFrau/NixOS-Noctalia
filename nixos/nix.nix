{
  config,
  lib,
  pkgs,
  ...
}: {
  nix = {
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
    settings = {
      experimental-features = ["nix-command" "flakes"];
      download-buffer-size = 1073741824;
    };
  };
  nixpkgs.config.allowUnfree = true;
  hardware.bluetooth.enable = true;
  security.rtkit.enable = true;
}
