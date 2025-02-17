{ config, pkgs, ...}:
let
    this = ./config.nix;
in
{
    imports = [
        ../../modules/dunst
        ../../modules/kitty
    ];

    home.packages = with pkgs;[
        xdg-utils
        xdg-user-dirs
    ];
    
    # portal daemon / ipc
    xdg.portal.enable = true;
    xdg.portal.configPackages = with pkgs;[ xdg-desktop-portal-gtk ];
}