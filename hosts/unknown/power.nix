{config, pkgs, ...}:
{
  powerManagement.enable = true;
  powerManagement.powertop.enable = true;
  # acpid for laptops
  services.acpid.enable = true;
  services.power-profiles-daemon.enable = false;
  services.auto-cpufreq = {
    enable = true;
  };
   # Define custom INI configuration for auto-cpufreq
  environment.etc."auto-cpufreq/config.ini".text = ''
    [settings]
    enabled = true
    min_freq = 800
    max_freq = 4200
    scaling_governor = performance
  '';
}