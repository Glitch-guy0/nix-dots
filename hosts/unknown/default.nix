{config, pkgs, ... }:

let 
  this = import ./config.nix;
in 
{
  imports = [
    # system config
    ../../system/audio
    # ../../system/desktopEnvironments/hyprland
    ../../system/desktopEnvironments/kde
    ../../system/intel-graphics
    ../../system/fonts
    ../../system/nix
    ../../system/packages
    ../../system/timezone/india

    # core conifg
    ./hardware-configuration.nix
    ./power.nix
  ];

  ## Bluetooth
  hardware.bluetooth.enable = this.bluetooth;

  ## efi configuration
  boot.loader.systemd-boot.enable = this.efi;
  boot.loader.efi.canTouchEfiVariables = this.efi;

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
