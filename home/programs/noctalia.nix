{ ... }:

{
  programs.noctalia-shell = {
    enable = true;

    settings = {
      settingsVersion = 0;

      ui = {
        fontDefault = "JetBrains Mono Nerd Font";
        fontFixed = "JetBrains Mono Nerd Font";
      };

      bar = {
        widgets = {
          left = [
            {
              id = "Clock";
            }
            {
              id = "SystemMonitor";
            }
            {
              id = "ActiveWindow";
              showText = false;
              colorizeIcon = true;
            }
            {
              id = "MediaMini";
              textColor = "tertiary";
            }
          ];
        };
      };

      wallpaper = {
        enabled = false;
      };

      colorSchemes = {
        useWallpaperColors = true;
      };
    };
  };
}