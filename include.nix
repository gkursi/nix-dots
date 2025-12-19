{ config, lib, pkgs, ...  }:

{
  imports =
    [
      ./nix/main.nix
      ./nix/packages.nix
    ];
}
