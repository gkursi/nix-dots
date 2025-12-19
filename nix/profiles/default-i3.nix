{ config, lib, pkgs, ... }:

{
  imports = [
    ./components/normal/editor.nix
    ./components/normal/file.nix
    ./components/normal/game.nix
    ./components/normal/java.nix
    ./components/normal/pretty.nix
    ./components/normal/social.nix
    ./components/normal/vsc.nix

    ./components/based/based.nix
    ./components/based/file.nix
    ./components/based/alias.nix

    ./components/desktop/x11/base.nix
    ./components/desktop/x11/i3.nix
    ./components/desktop/common/qt.nix
    ./components/desktop/common/screenshot.nix
    ./components/desktop/common/notification.nix
    ./components/desktop/manager/sddm.nix
  ];

  programs.nix-ld.enable = true;
}
