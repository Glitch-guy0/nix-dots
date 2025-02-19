{config, pkgs, ...}:
{
  home.packages = with pkgs;[
    brave
    virtualbox
  ];

  imports = [
    ./dev
    ./git.nix
    ./vscode
    ./zed-editor.nix
  ];
}