# security
{ config, lib, pkgs, ... }:

{
  security.polkit.enable = true; # polkit
  services.gnome.gnome-keyring.enable = true; # secret service

  # i2p
  environment.systemPackages = [
    pkgs.i2p
  ];
}
