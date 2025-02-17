{ config, pkgs, ...}:
let
    this = ./config.nix;
in
{
    imports = [
        ../../modules/dunst
        ../../modules/kitty
    ];
    
    # portal daemon / ipc
    xdg.portal.enable = true;
    xdg.portal.configPackages = with pkgs;[ xdg-desktop-portal-gtk ];
}