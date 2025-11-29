# java dev tools
{ config, lib, pkgs, ... }:

{
  environment.systemPackages = [
    pkgs.jetbrains.idea-community-bin
    pkgs.bytecode-viewer
    (pkgs.jdk24 /*.override { enableJavaFX = true; }*/)
  ];
}
