{config, pkgs, ...}:
{
  programs.java = {
    enable = true;
  };


  programs.vscode = {
    extensions = with pkgs;[
      vscode-extensions.vscjava.vscode-java-pack
    ];
  };

  # additional ide
  programs.eclipse = {
    enable = true;
  };
}