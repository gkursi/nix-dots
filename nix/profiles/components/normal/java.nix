# java dev tools
{ config, lib, pkgs, ... }:

{
  environment.systemPackages = [
    pkgs.jetbrains.idea-community-bin
    pkgs.bytecode-viewer
    (pkgs.jdk21 /*.override { enableJavaFX = true; }*/)
  ];
}
