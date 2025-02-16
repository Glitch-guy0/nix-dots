{
  description = "My nixos System Configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs}@inputs: 
  let 
    system = "x86_64-linux";
    # this option is to use stable / old packages
    # pkgs = nixpkgs.legacyPackages.${system};
  in {
    nixosConfigurations."unknown" = nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [
        ./hosts/unknown
        ./users/glitch
      ];
    };
  };
}
