# screenshot
{ config, lib, pkgs, ... }:

{
  environment.systemPackages = [
    pkgs.flameshot
    pkgs.gpu-screen-recorder-gtk
  ];
}
