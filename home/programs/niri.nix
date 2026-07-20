{ pkgs, ... }:

{
  programs.niri = {
    enable = true;
    package = pkgs.niri;

    settings = {
      prefer-no-csd = true;

      input = {
        touchpad = {
          tap = true;
          natural-scroll = true;
        };

        mouse.accel-profile = "flat";

        focus-follows-mouse = {
          max-scroll-amount = "0%";
        };
      };

      outputs."HDMI-A-1" = {
        mode = {
          width = 1920;
          height = 1080;
          refresh = 100.0;
        };
        scale = 1.0;
        focus-at-startup = true;
        position = {
          x = 1080;
          y = 0;
        };
      };
      
      outputs."eDP-1" = {
        mode = {
          width = 1920;
          height = 1080;
          refresh = 60.0;
        };
        scale = 1.25;
        position = {
          x = 0;
          y = 200;
        };
      };

      layout = {
        gaps = 8;

        center-focused-column = "never";

        preset-column-widths = [
          { proportion = 1. / 3.; }
          { proportion = 1. / 2.; }
          { proportion = 2. / 3.; }
        ];

        default-column-width = {
          proportion = 0.5;
        };

        focus-ring = {
          width = 1.5;
          active.color = "#1b3d50";
          inactive.color = "#505050";
        };

        shadow = {
          softness = 30;
          spread = 5;
          offset = {
            x = 0;
            y = 0;
          };
          color = "#0007";
        };
      };

      spawn-at-startup = [
        { argv = [ "noctalia-shell" ]; }
        { argv = [ "swaybg" "-m" "fill" "-i" "/home/harnes/bg.png" ]; }
        { argv = [ "vicinae" "server" ]; }
      ];

      screenshot-path = "~/Pictures/Screenshots/Screenshot from %Y-%m-%d %H-%M-%S.png";
      
      window-rules = [
        {
          geometry-corner-radius = 
            let
              r = 12.0;
            in
            {
              top-left = r;
              top-right = r;
              bottom-left = r;
              bottom-right = r;
            };
          clip-to-geometry = true;
        }
      ];

      binds = {
        "Mod+T" = {
          action.spawn = [ "ghostty" ];
        };
        "Mod+Space" = {
          repeat = false;
          action.spawn = [ "vicinae" "toggle" ];
        };
        "Mod+E" = {
          action.spawn = [ "brave" ]; 
        };

        "XF86AudioPlay" = {
          allow-when-locked = true;
          action.spawn-sh = "playerctl play-pause";
        };
        "XF86AudioStop" = {
          allow-when-locked = true;
          action.spawn-sh = "playerctl stop";
        };
        "XF86AudioPrev" = {
          allow-when-locked = true;
          action.spawn-sh = "playerctl previous";
        };
        "XF86AudioNext" = {
          allow-when-locked = true;
          action.spawn-sh = "playerctl next";
        };

        "XF86MonBrightnessUp" = {
          allow-when-locked = true;
          action.spawn = [ "brightnessctl" "--class=backlight" "set" "+10%" ];
        };
        "XF86MonBrightnessDown" = {
          allow-when-locked = true;
          action.spawn = [ "brightnessctl" "--class=backlight" "set" "10%-" ];
        };

        "Mod+O" = {
          repeat = false;
          action.toggle-overview = {};
        };

        "Mod+Q" = {
          repeat = false;
          action.close-window = {};
        };

        "Mod+Left" = {
          repeat = false;
          action.focus-column-left = {};
        };
        "Mod+Down" = {
          repeat = false;
          action.focus-window-down = {};
        };
        "Mod+Up" = {
          repeat = false;
          action.focus-window-up = {};
        };
        "Mod+Right" = {
          repeat = false;
          action.focus-column-right = {};
        };
        "Mod+H" = {
          repeat = false;
          action.focus-column-left = {};
        };
        "Mod+J" = {
          repeat = false;
          action.focus-window-down = {};
        };
        "Mod+K" = {
          repeat = false;
          action.focus-window-up = {};
        };
        "Mod+L" = {
          repeat = false;
          action.focus-column-right = {};
        };

        "Mod+Ctrl+Left" = {
          repeat = false;
          action.move-column-left = {};
        };
        "Mod+Ctrl+Down" = {
          repeat = false;
          action.move-window-down = {};
        };
        "Mod+Ctrl+Up" = {
          repeat = false;
          action.move-window-up = {};
        };
        "Mod+Ctrl+Right" = {
          repeat = false;
          action.move-column-right = {};
        };
        "Mod+Ctrl+H" = {
          repeat = false;
          action.move-column-left = {};
        };
        "Mod+Ctrl+J" = {
          repeat = false;
          action.move-window-down = {};
        };
        "Mod+Ctrl+K" = {
          repeat = false;
          action.move-window-up = {};
        };
        "Mod+Ctrl+L" = {
          repeat = false;
          action.move-column-right = {};
        };

        "Mod+Home" = {
          repeat = false;
          action.focus-column-first = {};
        };
        "Mod+End" = {
          repeat = false;
          action.focus-column-last = {};
        };
        "Mod+Ctrl+Home" = {
          repeat = false;
          action.move-column-to-first = {};
        };
        "Mod+Ctrl+End" = {
          repeat = false;
          action.move-column-to-last = {};
        };

        "Mod+Shift+Left" = {
          repeat = false;
          action.focus-monitor-left = {};
        };
        "Mod+Shift+Down" = {
          repeat = false;
          action.focus-monitor-down = {};
        };
        "Mod+Shift+Up" = {
          repeat = false;
          action.focus-monitor-up = {};
        };
        "Mod+Shift+Right" = {
          repeat = false;
          action.focus-monitor-right = {};
        };
        "Mod+Shift+H" = {
          repeat = false;
          action.focus-monitor-left = {};
        };
        "Mod+Shift+J" = {
          repeat = false;
          action.focus-monitor-down = {};
        };
        "Mod+Shift+K" = {
          repeat = false;
          action.focus-monitor-up = {};
        };
        "Mod+Shift+L" = {
          repeat = false;
          action.focus-monitor-right = {};
        };

        "Mod+Shift+Ctrl+Left" = {
          repeat = false;
          action.move-column-to-monitor-left = {};
        };
        "Mod+Shift+Ctrl+Down" = {
          repeat = false;
          action.move-column-to-monitor-down = {};
        };
        "Mod+Shift+Ctrl+Up" = {
          repeat = false;
          action.move-column-to-monitor-up = {};
        };
        "Mod+Shift+Ctrl+Right" = {
          repeat = false;
          action.move-column-to-monitor-right = {};
        };
        "Mod+Shift+Ctrl+H" = {
          repeat = false;
          action.move-column-to-monitor-left = {};
        };
        "Mod+Shift+Ctrl+J" = {
          repeat = false;
          action.move-column-to-monitor-down = {};
        };
        "Mod+Shift+Ctrl+K" = {
          repeat = false;
          action.move-column-to-monitor-up = {};
        };
        "Mod+Shift+Ctrl+L" = {
          repeat = false;
          action.move-column-to-monitor-right = {};
        };

        "Mod+Page_Down" = {
          repeat = false;
          action.focus-workspace-down = {};
        };
        "Mod+Page_Up" = {
          repeat = false;
          action.focus-workspace-up = {};
        };
        "Mod+U" = {
          repeat = false;
          action.focus-workspace-down = {};
        };
        "Mod+I" = {
          repeat = false;
          action.focus-workspace-up = {};
        };
        "Mod+Ctrl+Page_Down" = {
          repeat = false;
          action.move-column-to-workspace-down = {};
        };
        "Mod+Ctrl+Page_Up" = {
          repeat = false;
          action.move-column-to-workspace-up = {};
        };
        "Mod+Ctrl+U" = {
          repeat = false;
          action.move-column-to-workspace-down = {};
        };
        "Mod+Ctrl+I" = {
          repeat = false;
          action.move-column-to-workspace-up = {};
        };

        "Mod+Shift+Page_Down" = {
          repeat = false;
          action.move-workspace-down = {};
        };
        "Mod+Shift+Page_Up" = {
          repeat = false;
          action.move-workspace-up = {};
        };
        "Mod+Shift+U" = {
          repeat = false;
          action.move-workspace-down = {};
        };
        "Mod+Shift+I" = {
          repeat = false;
          action.move-workspace-up = {};
        };

        "Mod+WheelScrollDown" = {
          cooldown-ms = 150;
          action.focus-workspace-down = {};
        };
        "Mod+WheelScrollUp" = {
          cooldown-ms = 150;
          action.focus-workspace-up = {};
        };
        "Mod+Ctrl+WheelScrollDown" = {
          cooldown-ms = 150;
          action.move-column-to-workspace-down = {};
        };
        "Mod+Ctrl+WheelScrollUp" = {
          cooldown-ms = 150;
          action.move-column-to-workspace-up = {};
        };
        
        "Mod+WheelScrollRight" = {
          repeat = false;
          action.focus-column-right = {};
        };
        "Mod+WheelScrollLeft" = {
          repeat = false;
          action.focus-column-left = {};
        };
        "Mod+Ctrl+WheelScrollRight" = {
          repeat = false;
          action.move-column-right = {};
        };
        "Mod+Ctrl+WheelScrollLeft" = {
          repeat = false;
          action.move-column-left = {};
        };

        "Mod+Shift+WheelScrollDown" = {
          repeat = false;
          action.focus-column-right = {};
        };
        "Mod+Shift+WheelScrollUp" = {
          repeat = false;
          action.focus-column-left = {};
        };
        "Mod+Ctrl+Shift+WheelScrollDown" = {
          repeat = false;
          action.move-column-right = {};
        };
        "Mod+Ctrl+Shift+WheelScrollUp" = {
          repeat = false;
          action.move-column-left = {};
        };

        "Mod+1" = {
          repeat = false;
          action.focus-workspace = 1;
        };
        "Mod+2" = {
          repeat = false;
          action.focus-workspace = 2;
        };
        "Mod+3" = {
          repeat = false;
          action.focus-workspace = 3;
        };
        "Mod+4" = {
          repeat = false;
          action.focus-workspace = 4;
        };
        "Mod+5" = {
          repeat = false;
          action.focus-workspace = 5;
        };
        "Mod+6" = {
          repeat = false;
          action.focus-workspace = 6;
        };
        "Mod+7" = {
          repeat = false;
          action.focus-workspace = 7;
        };
        "Mod+8" = {
          repeat = false;
          action.focus-workspace = 8;
        };
        "Mod+9" = {
          repeat = false;
          action.focus-workspace = 9;
        };
        "Mod+Ctrl+1" = {
          repeat = false;
          action.move-column-to-workspace = 1;
        };
        "Mod+Ctrl+2" = {
          repeat = false;
          action.move-column-to-workspace = 2;
        };
        "Mod+Ctrl+3" = {
          repeat = false;
          action.move-column-to-workspace = 3;
        };
        "Mod+Ctrl+4" = {
          repeat = false;
          action.move-column-to-workspace = 4;
        };
        "Mod+Ctrl+5" = {
          repeat = false;
          action.move-column-to-workspace = 5;
        };
        "Mod+Ctrl+6" = {
          repeat = false;
          action.move-column-to-workspace = 6;
        };
        "Mod+Ctrl+7" = {
          repeat = false;
          action.move-column-to-workspace = 7;
        };
        "Mod+Ctrl+8" = {
          repeat = false;
          action.move-column-to-workspace = 8;
        };
        "Mod+Ctrl+9" = {
          repeat = false;
          action.move-column-to-workspace = 9;
        };

        "Mod+BracketLeft" = {
          repeat = false;
          action.consume-or-expel-window-left = {};
        };
        "Mod+BracketRight" = {
          repeat = false;
          action.consume-or-expel-window-right = {};
        };

        "Mod+Comma" = {
          repeat = false;
          action.consume-window-into-column = {};
        };
        "Mod+Period" = {
          repeat = false;
          action.expel-window-from-column = {};
        };

        "Mod+R" = {
          repeat = false;
          action.switch-preset-column-width = {};
        };
        "Mod+Shift+R" = {
          repeat = false;
          action.switch-preset-column-width-back = {};
        };

        "Mod+Ctrl+Shift+R" = {
          repeat = false;
          action.switch-preset-window-height = {};
        };
        "Mod+Ctrl+R" = {
          repeat = false;
          action.reset-window-height = {};
        };

        "Mod+F" = {
          repeat = false;
          action.maximize-column = {};
        };
        "Mod+Shift+F" = {
          repeat = false;
          action.fullscreen-window = {};
        };

        "Mod+M" = {
          repeat = false;
          action.maximize-window-to-edges = {};
        };

        "Mod+Ctrl+F" = {
          repeat = false;
          action.expand-column-to-available-width = {};
        };

        "Mod+C" = {
          repeat = false;
          action.center-column = {};
        };

        "Mod+Ctrl+C" = {
          repeat = false;
          action.center-visible-columns = {};
        };

        "Mod+Minus" = {
          repeat = false;
          action.set-column-width = "-10%";
        };
        "Mod+Equal" = {
          repeat = false;
          action.set-column-width = "+10%";
        };

        "Mod+Shift+Minus" = {
          repeat = false;
          action.set-window-height = "-10%";
        };
        "Mod+Shift+Equal" = {
          repeat = false;
          action.set-window-height = "+10%";
        };

        "Mod+V" = {
          repeat = false;
          action.toggle-window-floating = {};
        };
        "Mod+Shift+V" = {
          repeat = false;
          action.switch-focus-between-floating-and-tiling = {};
        };

        "Mod+W" = {
          repeat = false;
          action.toggle-column-tabbed-display = {};
        };

        "Print" = {
          repeat = false;
          action.screenshot = {};
        };
        "Ctrl+Print" = {
          repeat = false;
          action.screenshot-screen = {};
        };
        "Alt+Print" = {
          repeat = false;
          action.screenshot-window = {};
        };

        "Mod+Escape" = {
          repeat = false;
          allow-inhibiting = false;
          action.toggle-keyboard-shortcuts-inhibit = {};
        };

        "Mod+Shift+E" = {
          repeat = false;
          action.quit = {};
        };
        "Ctrl+Alt+Delete" = {
          repeat = false;
          action.quit = {};
        };

        "Mod+Shift+P" = {
          repeat = false;
          action.power-off-monitors = {};
        };
      };
    };
  };
}