# base wayland config
{ config, lib, pkgs, ... }:

{
    environment.systemPackages = [
        pkgs.wofi
        pkgs.fuzzel
        pkgs.kitty
        pkgs.waybar
        pkgs.wttrbar
        pkgs.swayidle
        pkgs.swaylock
        pkgs.swaybg
        pkgs.foot
    ];

    services.displayManager.sddm.wayland.enable = true;
}
