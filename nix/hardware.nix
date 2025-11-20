{ config, lib, pkgs, ... }:

{
  #### nvidia drivers

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

  ### Audio
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # Uncomment the following line if you want to use JACK applications
    # jack.enable = true;
  };
}
