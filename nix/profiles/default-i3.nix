{ config, lib, pkgs, ... }:

{
  imports = [
    ./components/base/arrpc.nix
    ./components/base/c.nix
    ./components/base/editor.nix
    ./components/base/extra-file.nix
    ./components/base/file.nix
    ./components/base/game.nix
    ./components/base/i2p.nix
    ./components/base/java.nix
    ./components/base/misc.nix
    ./components/base/pretty.nix
    ./components/base/social.nix
    ./components/base/vsc.nix

    ./components/desktop/x11/base.nix
    ./components/desktop/x11/i3.nix
    ./components/desktop/x11/picom.nix
    ./components/desktop/x11/paperview.nix
    ./components/desktop/common/qt.nix
    ./components/desktop/common/screenshot.nix
    ./components/desktop/common/notification.nix
    ./components/desktop/manager/sddm.nix
  ];

  programs.nix-ld.enable = true;
}
