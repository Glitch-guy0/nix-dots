{config, pkgs, ...}:
{
  programs.java = {
    enable = true;
  };

  # ide
  programs.eclipse = {
    enable = true;
  };

  programs.vscode = {
    enable = true;
    extensions = with pkgs;[
      vscode-extensions.vscjava.vscode-java-pack
    ];
  };
}