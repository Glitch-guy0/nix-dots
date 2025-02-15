## This contains the system configuraion

hosts
    - hostname / systemname
        - default.nix => imports `config.nix` and only used for main system configuration
        - config.nix => contains nameing and other options
        - hardware-configuration.nix => default hardware config of that system.
    - hosname2 / systemname