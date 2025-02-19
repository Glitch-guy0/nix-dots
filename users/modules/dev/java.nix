{config, pkgs, ...}:
{
  programs.java = {
    enable = true;
  };

  # ide
  programs.eclipse = {
    enable = true;
  };
}