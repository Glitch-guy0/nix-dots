{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: 
  let 
    system = "x86_64-linux";
    # this option is to use stable / old packages
    # pkgs = nixpkgs.legacyPackages.${system};
  in {
    
  };
}
