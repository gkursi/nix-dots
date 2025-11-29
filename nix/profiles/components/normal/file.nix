# misc utility stuff
{ config, lib, pkgs, ... }:

{
  environment.systemPackages = [
    pkgs.gcc
    pkgs.file
    pkgs.vlc
  ];
}
