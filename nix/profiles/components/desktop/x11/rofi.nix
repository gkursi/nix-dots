# rofi config
{ config, lib, pkgs, ... }:

{
	home-manager.users.qweru = {
		programs.rofi = {
			enable = true;
			theme = let
					inherit (pkgs.formats.rasi) mkLiteral;
				in {
					"*" = {
						background-color = mkLiteral config.theme.bg1;
						foreground-color = mkLiteral config.theme.fg1;
						border-color = mkLiteral "#000000";
				    		text-color = mkLiteral "@foreground-color";
						width = 512;
						spacing = 0;
				  	};

					"#inputbar" = {
						children = map mkLiteral [ "prompt" "textbox-prompt-sep" "entry" ];
					};

				  	"#textbox-prompt-colon" = {
				    		expand = false;
				    		str = " :3";
				    		margin = mkLiteral "0px 0.3em 0em 0em";
				    		text-color = mkLiteral "@foreground-color";
				  		padding = 2;
						border = 0;
					};
				};
		};
	};
}
