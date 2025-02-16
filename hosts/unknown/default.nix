{config, pkgs, ... }:

let 
  this = import ./config.nix;
in 
{
  imports = [
    # system config
    ../../system/nix
    ../../system/packages
    ../../system/timezone/india
    ../../system/desktopEnvironments/kde
    ../../system/audio

    # core conifg
    ./hardware-configuration.nix
  ];

  ## Bluetooth
  hardware.bluetooth.enable = this.bluetooth;
  ## Hostname
  networking.hostName = this.hostname;

  ## Networking
  networking.wireless.enable = this.legacywifi;
  networking.networkmanager.enable = this.wifi;

  ## Printer Service (CUPS)
  services.printing.enable = this.printer;
  ## Touchpad
  services.libinput.enable = this.touchpad;

  ## virtualization
  virtualisation.vmware.guest.enable = this.vmware.guest;
}