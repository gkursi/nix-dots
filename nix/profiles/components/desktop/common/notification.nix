# notifications
{ config, lib, pkgs, ... }:

{
	environment.systemPackages = [
    		pkgs.libnotify
  	];
	
	home-manager.users.qweru = {
		services.dunst = {
			enable = true;

			settings = {
				global = {
					follow = "keyboard";
					width = "(100, 300)";
					height = "(15, 300)";
					origin = "bottom-right";
					padding = 12;
				};

				urgency_low = {
					background = config.theme.bg1;
					foreground = config.theme.fg1;
					timeout = 10;
				};

				urgency_normal = {
					background = config.theme.bg1;
					foreground = config.theme.fg1;
					timeout = 10;
				};

				urgency_critical = {
					background = config.theme.bg1;
					foreground = config.theme.fgUrgent;
					timeout = 0;
				};
    			};
		};
	};
}
