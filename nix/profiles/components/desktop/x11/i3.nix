# i3wm config
{ config, lib, pkgs, ... }:

let
	mod = "Mod4";
in {
    environment.systemPackages = [
        pkgs.i3
        pkgs.betterlockscreen
	pkgs.dmenu
	pkgs.i3status
    	pkgs.i3lock-blur
    ];

    services.displayManager = {
        defaultSession = "none+i3";
    };

    services.xserver.windowManager.i3 = {
        enable = true;
    };

    home-manager.users.qweru.xsession.windowManager.i3 = {
	enable = true;
	config = {
		modifier = mod;
		
		fonts = {
			names = [ "DejaVu Sans Mono " ];
			style = "Bold";
			size = 8.0;
		};

		keybindings = {
			"${mod}+e" = "exec 'rofi -show drun'";
			"${mod}+m" = "exec --no-startup-id 'alacritty -c musikbox'";
			"${mod}+Shift+l" = "exec '~/scripts/lock'";
			"${mod}+Return" = "exec alacritty";
			"${mod}+Shift+q" = "kill";
			"${mod}+Shift+s" = "exec --no-startup-id ~/scripts/ez.sh";
	     		
			"${mod}+Left" = "focus left";
			"${mod}+Right" = "focus right";
			"${mod}+Up" = "focus up";
			"${mod}+Down" = "focus down";

			"${mod}+Shift+Left" = "move left";
			"${mod}+Shift+Right" = "move right";
			"${mod}+Shift+Up" = "move up";
			"${mod}+Shift+Down" = "move down";

			"XF86AudioPlay" = "exec playerctl play";
			"XF86AudioPause" = "exec playerctl pause";
			"XF86AudioNext" = "exec playerctl next";
			"XF86AudioPrev" = "exec playerctl previous";

			"${mod}+f" = "fullscreen toggle";
			"${mod}+Shift+Space" = "floating toggle";

			"${mod}+1" = "workspace number 1";
			"${mod}+2" = "workspace number 2";
			"${mod}+3" = "workspace number 3";
			"${mod}+4" = "workspace number 4";
			"${mod}+5" = "workspace number 5";
			"${mod}+6" = "workspace number 6";
			"${mod}+7" = "workspace number 7";
			"${mod}+8" = "workspace number 8";
			"${mod}+9" = "workspace number 9";
			"${mod}+10" = "workspace number 10";

			"${mod}+Shift+1" = "move container to workspace number 1";
			"${mod}+Shift+2" = "move container to workspace number 2";
			"${mod}+Shift+3" = "move container to workspace number 3";
			"${mod}+Shift+4" = "move container to workspace number 4";
			"${mod}+Shift+5" = "move container to workspace number 5";
			"${mod}+Shift+6" = "move container to workspace number 6";
			"${mod}+Shift+7" = "move container to workspace number 7";
			"${mod}+Shift+8" = "move container to workspace number 8";
			"${mod}+Shift+9" = "move container to workspace number 9";
			"${mod}+Shift+10" = "move container to workspace number 10";

			"${mod}+Shift+r" = "restart";
		};
			# bar
		bars = [
			{
				statusCommand = "~/.config/i3status/wrapper.sh";
				colors = {

					background = "${config.theme.bg0}";
					separator = "${config.theme.bg2}";
					statusline = "${config.theme.fg1}";

					focusedWorkspace = {
						border = "${config.theme.bg0}";
						background = "${config.theme.bg0}";
						text = "${config.theme.fg2}";
					};

					activeWorkspace = {
						border = "${config.theme.bg0}";
						background = "${config.theme.bg0}";
						text = "${config.theme.fg0}";
					};

					inactiveWorkspace = {
						border = "${config.theme.bg0}";
						background = "${config.theme.bg0}";
						text = "${config.theme.fg0}";
					};

					urgentWorkspace = {
						border = "${config.theme.bg0}";
						background = "${config.theme.bg0}";
						text = "${config.theme.fgUrgent}";
					};

					bindingMode = {
						border = "${config.theme.bg0}";
						background = "${config.theme.bg0}";
						text = "${config.theme.fg0}";
					};

				};
			}
		];
	
		# window config
		window = {
			border = 0;
			titlebar = false;
		};

		gaps = {
			inner = 7;
			outer = 7;
		};

		# colors	
		colors = {
			focused = let border = "${config.theme.bgFocus}"; in {
				border = border;
				background = "${config.theme.bg1}";
				text = "${config.theme.fg1}";
				indicator = border;
				childBorder = border;
			};

			urgent = let border = "${config.theme.bgUrgent}"; in {
				border = border;
				background = "${config.theme.bg1}";
				text = "${config.theme.fg1}";
				indicator = border;
				childBorder = border;
			};

			focusedInactive = let border = "${config.theme.bg2}"; in {
				border = border;
				background = "${config.theme.bg1}";
				text = "${config.theme.fg1}";
				indicator = border;
				childBorder = border;
			};

			unfocused = let border = "${config.theme.bg2}"; in {
				border = border;
				background = "${config.theme.bg1}";
				text = "${config.theme.fg1}";
				indicator = border;
				childBorder = border;
			};

			placeholder = let border = "${config.theme.bg2}"; in {
				border = border;
				background = "${config.theme.bg1}";
				text = "${config.theme.fg1}";
				indicator = border;
				childBorder = border;
			};

			background = "${config.theme.bg1}";
		};

		# autorun
		terminal = "alacritty";

		# focus
		focus = {
			newWindow = "urgent";
		};
	};
    };
}
