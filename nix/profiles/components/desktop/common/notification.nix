# notifications
{ config, lib, pkgs, ... }:

{
  environment.systemPackages = [
    pkgs.libnotify
    pkgs.dunst
  ];
}
