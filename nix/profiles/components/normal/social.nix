# social
{ config, lib, pkgs, ... }:

{
  environment.systemPackages = [
    pkgs.vesktop
    pkgs.spotify
    pkgs.firefox
  ];
}
