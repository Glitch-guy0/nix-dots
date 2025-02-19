{config, pkgs, ...}:
{
  # Display Manager
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;

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
  
}