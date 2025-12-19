# base stuff needed for x11
{ config, lib, pkgs, ... }:

{
  environment.systemPackages = [
    pkgs.xorg.xinit
    pkgs.xclip
    pkgs.xdotool
    pkgs.xorg.libXrender
    pkgs.rofi
  ];

  services.xserver = {
    enable = true;

    desktopManager = {
      xterm.enable = false;
    };

    xkb = {
      layout = "lv";
      variant = "";
    };
  };
}
