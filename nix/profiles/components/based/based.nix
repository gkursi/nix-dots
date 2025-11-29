# sligtly more biased packages
# that some might want to separate
{ config, lib, pkgs, ... }:

{
  environment.systemPackages = [
    pkgs.mprocs
    pkgs.kondo
    pkgs.musikcube
  ];
}
