{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    xorg.xinit
    i3
    libsForQt5.sddm
    rofi
    betterlockscreen
    feh
    playerctl
    xclip
    xdotool
    maim
    flameshot
    jq
    libnotify
    dunst
    xorg.libXrender
    gpu-screen-recorder-gtk
    pavucontrol
    pulseaudio-ctl
  ];

  services.xserver = {
    enable = true;
    desktopManager = {
      xterm.enable = false;
    };
    displayManager = {
      defaultSession = "none+i3";
    };

    windowManager.i3 = {
      enable = true;
      extraPackages = with pkgs; [
        dmenu
        i3status
        i3lock-blur
        i3a
      ];
    };

    videoDrivers = ["nvidia"];
  };

  services.displayManager.sddm.enable = true;

  qt.enable = true;
  qt.platformTheme = "gtk2";
  qt.style = "gtk2";
}
