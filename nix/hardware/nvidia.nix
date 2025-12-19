# nvidia drivers
{ config, lib, pkgs, ... }:

{
  hardware.graphics = {
    enable = true;
  };

  hardware.nvidia = {
    # Enable this if you have graphical corruption issues or application crashes after waking
    # up from sleep.
    powerManagement.enable = false;

    modesetting.enable = true;
    powerManagement.finegrained = false;
    open = false;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.latest;
  };

  services.xserver.enable = true;
  services.xserver.videoDrivers = ["nvidia"];
}
