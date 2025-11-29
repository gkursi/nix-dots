# base packages
{ config, lib, pkgs, ... }:

{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = [
    pkgs.vim
    pkgs.wget
    pkgs.alacritty
    pkgs.zsh
  ];

  programs.zsh.enable = true;

  users.users.qweru = {
    shell = pkgs.zsh;
  };
}
