{config, pkgs, ...}:
{
  programs.vscode = {
    enable = true;
    extentions = with pkgs;[
      vscode-extensions.mhutchie.git-graph
    ];
  }
}