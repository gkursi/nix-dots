{ config, lib, pkgs, ...  }:
{
    home-manager.useGlobalPkgs = true;
    home-manager.useUserPackages = true;
    home-manager.users.qweru = import ./home.nix;
}
