# ssh daemon
{ config, lib, pkgs, ... }:

{
  services.openssh = {
    enable = true;
  };
}
