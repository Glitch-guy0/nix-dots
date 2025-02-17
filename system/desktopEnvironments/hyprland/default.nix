{config, pkgs, ...}:
{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  environment.sessionVariables = {
    # if cursor becomes invisible
    WLR_NO_HARDWARE_CURSORS = "1";
    # for electron apps (like vscode)
    NIXOS_OZONE_WL = "1";
  };

  hardware = {
    graphics.enable = true;
  };
}