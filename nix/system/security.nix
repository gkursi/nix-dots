# security
{ config, lib, pkgs, ... }:

{
    security.polkit.enable = true; # polkit
    services.gnome.gnome-keyring.enable = true; # secret service

  # i2p
    services.i2pd = {
        enable = true;
        address = "127.0.0.1"; # you may want to set this to 0.0.0.0 if you are planning to use an ssh tunnel
        proto = {
          http.enable = true;
          socksProxy.enable = true;
          httpProxy.enable = true;
        };
    };
}
