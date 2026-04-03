# paperview (wallpaper)
{ config, lib, pkgs, ... }:

{
    environment.systemPackages = [
        pkgs.paperview
    ];
}
