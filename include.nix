{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./nix/main.nix
      ./nix/packages.nix
      ./nix/desktop.nix
    ];

    # todo: fetch .config from github
}
