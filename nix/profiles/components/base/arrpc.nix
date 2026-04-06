# arrpc for vesktop
{ config, lib, pkgs, ... }:

{
    home-manager.users.qweru = {
        services.arrpc.enable = true;
    };
}
