# video editing
{ config, lib, pkgs, ... }:

{
  environment.systemPackages = [
    pkgs.olive-editor
    pkgs.audacity
  ];
}
