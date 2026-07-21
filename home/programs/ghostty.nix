{ ... }:

{
  programs.ghostty = {
    enable = true;

    settings = {
      font-family = "Jetbrains Mono Nerd Font";
      font-size = 14;
      background = "#181818";
      background-opacity = 0.5;
      window-padding-x = 10;
      window-padding-y = 10;
      confirm-close-surface = false;
      theme = "noctalia";
    };

    themes = {
      noctalia = {
        background = "#131316";
        foreground = "#e5e1e6";
        cursor-color = "#e5e1e6";
        cursor-text = "#131316";
        selection-background = "#e8b9d5";
        selection-foreground = "#46263b";
    
        palette = [
          "0=#46464f"
          "1=#ffb4ab"
          "2=#bfc2ff"
          "3=#c5c4dd"
          "4=#e8b9d5"
          "5=#bfc2ff"
          "6=#c5c4dd"
          "7=#e5e1e6"
          "8=#c7c5d0"
          "9=#ffb4ab"
          "10=#bfc2ff"
          "11=#c5c4dd"
          "12=#e8b9d5"
          "13=#bfc2ff"
          "14=#c5c4dd"
          "15=#e5e1e6"
        ];
      };
    };
  };
}
