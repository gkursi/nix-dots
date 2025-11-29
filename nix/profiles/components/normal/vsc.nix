# version control
{ config, lib, pkgs, ... }:

{
  environment.systemPackages = [
    pkgs.git
    pkgs.gh
  ];
}
