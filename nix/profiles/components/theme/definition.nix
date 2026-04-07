# theme option definition
{ config, lib, pkgs, ... }:

{
	options.theme = with lib; {
		fg0 = lib.mkOption {
			type = with types; uniq str;
			default = "#ffffff";
			example = "#bdae93";
			description = ''
				Dark foreground color.
			'';
		};


		fg1 = lib.mkOption {
			type = with types; uniq str;
			default = "#ffffff";
			example = "#ebdbb2";
			description = ''
				Primary foreground color.
			'';
		};

		fg2 = lib.mkOption {
			type = with types; uniq str;
			default = "#ffffff";
			example = "#fbf1c7";
			description = ''
				Secondary foreground color (lighter).
			'';
		};

		fgUrgent = lib.mkOption {
			type = with types; uniq str;
			default = "#ff0000";
			example = "#ebdbb2";
			description = ''
				Urgent foreground color (usually red).
			'';
		};
		
		bg0 = lib.mkOption {
			type = with types; uniq str;
			default = "#000000";
			example = "#1d2021";
			description = ''
				Primary background color.
			'';
		};

		bg1 = lib.mkOption {
			type = with types; uniq str;
			default = "#000000";
			example = "#282828";
			description = ''
				Primary background color.
			'';
		};

		bg2 = lib.mkOption {
			type = with types; uniq str;
			default = "#000000";
			example = "#3c3836";
			description = ''
				Secondary background color (lighter).
			'';
		};

		bgUrgent = lib.mkOption {
			type = with types; uniq str;
			default = "#ff0000";
			example = "#cc241d";
			description = ''
				Urgent background color.
			'';
		};

		bgFocus = lib.mkOption {
			type = with types; uniq str;
			default = "#aaaaaa";
			example = "#689d6a";
			description = ''
				Focused/accent background color.
			'';
		};
	};
}
