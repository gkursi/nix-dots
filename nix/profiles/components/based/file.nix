# sligtly more biased packages
# that some might want to separate
{ config, lib, pkgs, ... }:

{
  environment.systemPackages = [
    pkgs.eza
    pkgs.ripgrep
    pkgs.fd
    pkgs.ncdu
  ];
}
