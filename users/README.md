# User folder structure

> <span style='color: red;'>warning:</span> having *config* files in user directory is fine; as it doesn't take much space as *packages*

Users
    - flake.nix => for users home-manager call like `home --apply-flake ./users#username'(not-command)
    - user1
        - default.nix => for nixos / system configuration of user
        - config.nix => imported by home.nix and default.nix contains info like username & options
        - home => user home-manager configuraion
          - default.nix => which is pointed in user's flake also imports packages
          - packages
              - types (if necessary)
                - shell / terminal / desktopEnvironment
              - package.nix (same if separation is not required) (start here)
              - package (same if separation required)
                - default.nix
                - extra required fiels
    - user2
        - default.nix => for nixos / system configuration of user
        - config.nix => imported by home.nix and default.nix contains info like username & options
        - home.nix => user home-manager configuraion


# Home-Manager Examples
## user packages
*these are comments from template for future reference*
```
  home.packages = [
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    # pkgs.hello

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];
```
## Manage environment variables
```
home.sessionVariables = {
 EDITOR = "emacs";
};
```
## manage dot files
```
home.file = { };
```