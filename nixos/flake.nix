{
  description = "NixOS configuration with Noctalia";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11"; # Sie können die instabile Version verwenden, aber es könen Fehler auftreten

    noctalia = {
      url = "github:noctalia-dev/noctalia-shell";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs @ {
    self,
    nixpkgs,
    ...
  }: {
    nixosConfigurations.arir = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";

      specialArgs = {inherit inputs;};
      modules = [
        ./noctalia.nix
        ./hardware-configuration.nix
        ./configuration.nix
      ];
    };
  };
}
