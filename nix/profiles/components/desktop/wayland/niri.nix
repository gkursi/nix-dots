# base wayland config
{ config, lib, pkgs, ... }:

{
    environment.systemPackages = [
        pkgs.xwayland-satellite
    ];

    programs.niri.enable = true;
    programs.xwayland.enable = true;
}
