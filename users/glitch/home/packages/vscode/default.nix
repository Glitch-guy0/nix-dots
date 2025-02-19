{config, pkgs, ...}:
{
  programs.vscode = {
    enable = true;
    extensions = with pkgs;[
      vscode-extensions.mhutchie.git-graph
    ];
  };

  imports = [
    ./java.nix
  ];
}