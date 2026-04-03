# editors
{ config, lib, pkgs, ... }:

{
  environment.systemPackages = [
    pkgs.zed-editor
    pkgs.neovim
  ];
}
