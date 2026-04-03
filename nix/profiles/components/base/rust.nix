# rust dev tools
{ config, lib, pkgs, ... }:

{
  environment.systemPackages = [
    pkgs.cargo
    pkgs.rustc
    pkgs.bacon
    pkgs.cargo-info
    pkgs.rusty-man
  ];
}
