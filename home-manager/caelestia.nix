{
  config,
  pkgs,
  inputs,
  ...
}: {
  home.packages = with pkgs; [
    inputs.caelestia-shell.packages.${pkg.system}.default
  ];
}
