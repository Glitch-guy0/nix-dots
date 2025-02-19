{config, pkgs, ...}:
{
  home.packages = with pkgs;[
    brave
    virtualbox
  ];

  imports = [
    ./git.nix
    ./vscode
    ./zed-editor.nix
  ];
}