{ config, lib, pkgs, ...  }:
let
  configFilesToLink = {
    ".config/i3" = ../../config/i3;
    ".config/musikcube/hotkeys.json"  = ../../config/musikcube/hotkeys.json;
    ".config/musikcube/settings.json"  = ../../config/musikcube/settings.json;
    ".config/niri" = ../../config/niri;
  };

  # e.g. from { ".hgrc" = ./hgrc; } to { ".hgrc".source = ./hgrc; }
  toSource = configDirName: dotfilesPath: { source = dotfilesPath; };
in
{
  imports = [ <home-manager/nixos> ];
  home-manager.users.qweru = {
    home.username = "qweru";
    home.homeDirectory = "/home/qweru";
    home.stateVersion = "24.11";

    # Symlink files under ~
    home.file = pkgs.lib.attrsets.mapAttrs toSource configFilesToLink;

    programs.home-manager.enable = true;

    #### swayidle ####

    services.swayidle =
    let
        lock = "${pkgs.swaylock}/bin/swaylock --daemonize";
        display = status: "${pkgs.niri}/bin/niri msg action power-${status}-monitors";
    in
    {
        enable = true;
        timeouts = [
            {
                timeout = 180; # in seconds
                command = "${pkgs.libnotify}/bin/notify-send 'Locking in 5 seconds' -t 5000";
            }
            {
                timeout = 185;
                command = lock;
            }
            {
                timeout = 240;
                command = display "off";
                resumeCommand = display "on";
            }
        ];
        events = [
            {
                event = "before-sleep";
                # adding duplicated entries for the same event may not work
                command = (display "off") + "; " + lock;
            }
            {
                event = "after-resume";
                command = display "on";
            }
            {
                event = "lock";
                command = (display "off") + "; " + lock;
            }
            {
                event = "unlock";
                command = display "on";
            }
        ];
    };
  };
}
