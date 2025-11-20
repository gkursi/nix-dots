{ config, lib, pkgs, ... }:

{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    vim
    wget
    firefox
    hyfetch
    neovim
    steam
    spotify
    vesktop
    gh
    git
    unzip
    r2modman
    prismlauncher
    dconf
    gcc
    file
    (jdk24 /*.override { enableJavaFX = true; }*/)
    vlc
    rar
    musikcube
    alacritty
    zsh
    oh-my-zsh
    ncdu
    #codeblocks
    #olive-editor
    audacity
    zed-editor
    jetbrains.idea-community-bin
  ];

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
  };

  programs.zsh.enable = true;

  users.users.qweru = {
    shell = pkgs.zsh;
  };
}
