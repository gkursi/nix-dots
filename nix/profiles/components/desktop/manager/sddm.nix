# sddm config
{ config, lib, pkgs, ... }:

{
    environment.systemPackages = [
        pkgs.kdePackages.sddm
        pkgs.sddm-astronaut
    ];

    services.displayManager.sddm.enable = true;
}
