# my aliases
{ config, lib, pkgs, ... }:

{
  environment.shellAliases = {
    ls = "exa";
    l = "exa -lah";
  };
}
