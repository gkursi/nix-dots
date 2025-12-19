{ config, lib, pkgs, ... }:

{
  imports = [
    ./network/network.nix

    ./hardware/audio.nix
    ./hardware/nvidia.nix

    ./system/loader.nix
    ./system/locale.nix
    ./system/users.nix
    ./system/security.nix

    ./home/home-manager.nix # todo: split up
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };
}
