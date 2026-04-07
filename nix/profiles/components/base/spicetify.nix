# spicetify
{ config, lib, pkgs, inputs, ... }:

let
	spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.stdenv.system};
in
{
	programs.spicetify = {
		enable = true;
		enabledExtensions = with spicePkgs.extensions; [
			hidePodcasts
			shuffle
		];
		theme = spicePkgs.themes.dribbblish;
		colorScheme = "gruvbox-material-dark";
	};
}
