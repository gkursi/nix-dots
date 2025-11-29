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
  ];
}
