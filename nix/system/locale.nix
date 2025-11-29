# bootloader
{ config, lib, pkgs, ... }:

{
  # Set your time zone.
  time.timeZone = "Europe/Riga";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
}
