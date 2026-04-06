# java dev tools
{ config, lib, pkgs, ... }:

{
  environment.systemPackages = [
    pkgs.jetbrains.idea
    pkgs.recaf-launcher
    (pkgs.jdk21 /*.override { enableJavaFX = true; }*/)
  ];
}
