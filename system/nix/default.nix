{ config, pkgs, lib,  ... }:
{
  ## nix configurations
  # experimental features
  nix.extraOptions = ''experimental-features = nix-command flakes'';

  ## Allow unfree packages
  nixpkgs.config.allowUnfree = lib.mkDefault true;

  system.stateVersion = "24.11";
}