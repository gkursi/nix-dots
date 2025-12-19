# base stuff needed for x11
{ config, lib, pkgs, ... }:

{
  environment.systemPackages = [
    pkgs.i3
    pkgs.betterlockscreen
  ];

  services.xserver = {
    displayManager = {
      defaultSession = "none+i3";
    };

    windowManager.i3 = {
      enable = true;
      extraPackages = [
        pkgs.dmenu
        pkgs.i3status
        pkgs.i3lock-blur
        pkgs.i3a
      ];
    };
  };
}
