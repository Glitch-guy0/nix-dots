# User folder structure

Users
    - user1
        - flake.nix => for users home-manager
        - default.nix => for nixos / system configuration of user
        - config.nix => imported by home.nix and default.nix contains info like username & options
        - home.nix => user home-manager configuraion
    - user2
        - flake.nix => for users home-manager
        - default.nix => for nixos / system configuration of user
        - config.nix => imported by home.nix and default.nix contains info like username & options
        - home.nix => user home-manager configuraion