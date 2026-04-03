# misc utility stuff
{ config, lib, pkgs, ... }:

{
  environment.systemPackages = [
    pkgs.oh-my-zsh
    pkgs.hyfetch
  ];
}
