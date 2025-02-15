{ config, pkgs, ...}:
let 
  this = import ./config.nix;
in
{
  ## Base user Configuration
  users.users.${this.username} = {
    isNormalUser = !this.admin;
    description = this.username;
    extraGroups = this.groups;
    packages = with pkgs; [
      vscode ## remove this package later
      brave  ## remove this later
    ];
  };

  ## Autologin Service
  services.displayManager.autoLogin.enable = this.autologin;
  services.displayManager.autoLogin.user = this.username;
}