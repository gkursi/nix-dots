{ config, lib, pkgs, ...  }:
{
    imports = [ <home-manager/nixos> ];
    home-manager.users.qweru = import ./home.nix;
}
