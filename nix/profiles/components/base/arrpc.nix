# arrpc for vesktop
{ config, lib, pkgs, ... }:

{
    imports = [ <home-manager/nixos> ];
    home-manager.users.qweru = {
        services.arrpc.enable = true;
    };
}
