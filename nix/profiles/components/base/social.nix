# social
{ config, lib, pkgs, ... }:

{
  environment.systemPackages = [
    pkgs.vesktop
    pkgs.firefox
    pkgs.element-desktop
  ];
}
