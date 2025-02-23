{ config, pkgs, ... }:
let 
  this = import ../config.nix;
in 
{
  imports = [
    ./packages
  ];
  
  home.sessionVariables = {
    EDITOR = "vim";
    LANG = "en_US.UTF-8";
  };

  # Do not touch
  home.username = this.username;
  home.homeDirectory = this.homedir;
  home.stateVersion = "24.05"; 
  programs.home-manager.enable = true;
  nixpkgs.config.allowUnfree = true;
}
