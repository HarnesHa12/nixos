{ ... }:

{
  programs.vicinae = {
    enable = true;

    settings = {
      font = {
        normal = {
          family = "Jetbrains Mono Nerd Font";
          size = 10.5;
        };
      };

      theme = {
        dark = {
          name = "noctalia";
        };
      };

      launcher_window = {
        opacity = 0.2;
      };
    };
  };
}