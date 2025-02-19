{config, pkgs, ...}:
{
  imports = [
    ./git
    ./vscode
  ];

  home.packages = with pkgs;[
    brave
  ];
}