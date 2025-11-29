# game related stuff
{ config, lib, pkgs, ... }:

{
  environment.systemPackages = [
    pkgs.r2modman
    pkgs.prismlauncher
    pkgs.steam
  ];

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
  };
}
