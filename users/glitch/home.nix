{ config, pkgs, ... }:
let 
  this = ./config.nix;
in 
{

  home.packages = with pkgs;[
    btop
  ];

  home.file = {

  };

  home.sessionVariables = {
    EDITOR = "vim";
    LANG = "en_US.UTF-8";
  };



  # Do not touch
  home.username = this.username;
  home.homeDirectory = this.homedir;
  home.stateVersion = "24.05"; 
  programs.home-manager.enable = true;
}
