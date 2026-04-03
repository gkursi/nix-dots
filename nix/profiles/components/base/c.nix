# c dev tools
{ config, lib, pkgs, ... }:

{
  environment.systemPackages = [
    pkgs.codeblocksFull
  ];
}
