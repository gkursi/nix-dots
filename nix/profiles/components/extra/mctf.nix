# mctf.datoriki.org
{ config, lib, pkgs, ... }:

{
  environment.systemPackages = [
    pkgs.openvpn
    pkgs.wireshark
    pkgs.binwalk
    pkgs.ltrace
    pkgs.ghidra-bin
    pkgs.hashcat
  ];
}
