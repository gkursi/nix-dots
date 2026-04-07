# picom
{ config, lib, pkgs, theme, ... }:

{
	home-manager.users.qweru = {	
		services.picom = {
			enable = true;
			backend = "glx"; 

			fade = true;
			fadeDelta = 2;
			fadeSteps = [
				0.06
				0.06
			];
			
			settings = {
				blur = {
					method = "gaussian";
					size = 10;
					deviation = 5.0;
				};

				border-radius = 0;

				detect-transient = true;
				use-damage = true;
				xrender-sync-fence = true;
				log-level = "warn";
			};

			extraConfig = ''
				animations = ({
				  triggers = [ "open" ];
				  preset = "appear";
				}, {
				  triggers = [ "close" ];
				  preset = "disappear";
				}, {
				  triggers = [ "size", "position" ];
				  preset = "geometry-change";
				  duration = 0.3;
				});
		      '';
				
		};
	};
}
