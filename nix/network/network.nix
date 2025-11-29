# network
{ config, lib, pkgs, ... }:

{
  # Enable networking
  networking.networkmanager.enable = true;

  networking.hostName = "toaster";
  # networking.wireless.enable = true;
}
