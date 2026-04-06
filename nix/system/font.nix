{ config, lib, pkgs, ... }:

{
    fonts = {
        enableDefaultPackages = true;
        packages = with pkgs; [
            pkgs.clarity-city
            pkgs.liberation_ttf
            pkgs.ubuntu-classic
        ];

        fontconfig = {
            defaultFonts = {
                serif = [  "Liberation Serif" ];
                sansSerif = [ "Clarity City" ];
                monospace = [ "Ubuntu Mono" ];
            };
        };
    };
}
