# bootloader
{ config, lib, pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.qweru = {
    isNormalUser = true;
    description = "Qweru";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };
}
