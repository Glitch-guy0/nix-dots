# User folder structure

Users
    - flake.nix => for users home-manager call like `home --apply-flake ./users#username'(not-command)
    - shared
        - application name
            - config files here(.nix)
    - user1
        - default.nix => for nixos / system configuration of user
        - config.nix => imported by home.nix and default.nix contains info like username & options
        - home.nix => user home-manager configuraion
        - applications
            - application name
                - default.nix
                - configuration.nix
    - user2
        - default.nix => for nixos / system configuration of user
        - config.nix => imported by home.nix and default.nix contains info like username & options
        - home.nix => user home-manager configuraion