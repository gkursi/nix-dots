{ config, lib, pkgs, ...  }:
let
  configFilesToLink = {
    # i3wm config files
    ".config/i3" = ../../config/i3;
    ".config/i3status" = ../../config/i3status;
    ".config/picom" = ../../config/picom;

    # dunst
    ".config/dunst" = ../../config/dunst;
    
    # rofi
    ".config/rofi" = ../../config/rofi;

    # musikcube preferences
    ".config/musikcube/hotkeys.json"  = ../../config/musikcube/hotkeys.json;
    ".config/musikcube/settings.json"  = ../../config/musikcube/settings.json;

    # niri & alacritty
    ".config/niri" = ../../config/niri;
    ".config/alacritty" = ../../config/alacritty;

    # wallpaper
    ".background-image" = ../../img/wallpaper.png;
  };

  # e.g. from { ".hgrc" = ./hgrc; } to { ".hgrc".source = ./hgrc; }
  toSource = configDirName: dotfilesPath: { source = dotfilesPath; };
in
{
    home.username = "qweru";
    home.homeDirectory = "/home/qweru";
    home.stateVersion = "24.11";

    # Symlink files under ~
    home.file = pkgs.lib.attrsets.mapAttrs toSource configFilesToLink;

    programs.home-manager.enable = true;
}
