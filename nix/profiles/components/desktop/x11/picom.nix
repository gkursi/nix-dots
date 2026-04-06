# arrpc for vesktop
{ config, lib, pkgs, ... }:

{
    home-manager.users.qweru = {
        services.picom = {
            enable = true;
            extraConfig = ''
                backend = "glx";
		
		corner-radius = 5;

                fading = true;
                fade-in-step = 0.06;
                fade-out-step = 0.06;
                fade-delta = 2.5

                animations = (
                    {
                        triggers = [ "open" ];
                        preset = "appear";
                    },
                    {
                        triggers = [ "close" ];
                        preset = "disappear";
                    },
                    {
                        triggers = [ "geometry" ];
                        preset = "geometry-change";
                        duration = 0.3;
                    }
                )

                rules: ({
                    match = "class_g = 'Alacritty'";
                    blur-background = true;
                })

                blur:
                {
                    method = "gaussian";
                    size = 12;
                    deviation = 6.0;
                };

                # Use 'WM_TRANSIENT_FOR' to group windows, and consider windows
                # in the same group focused at the same time.
                #
                # Default: false
                detect-transient = true;

                # Use of damage information for rendering. This cause the only the part of the
                # screen that has actually changed to be redrawn, instead of the whole screen
                # every time. Should improve performance.
                #
                # Default: false
                use-damage = true;

                # Use X Sync fence to wait for the completion of rendering of other windows,
                # before using their content to render the current screen.
                #
                # Required for explicit sync drivers, such as nvidia.
                #
                xrender-sync-fence = true;

                log-level = "warn";
            '';
        };
    };
}
