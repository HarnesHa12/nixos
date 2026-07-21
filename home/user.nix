{ pkgs, ... }:

{
  home.username = "harnes";
  home.homeDirectory = "/home/harnes";
  home.stateVersion = "26.05";

  home.file."bg.png".source = ../images/bg.png;
  home.file."fastfetch.png".source = ../images/fastfetch.png;

  home.sessionVariables = {
    PNPM_HOME = "$HOME/.local/share/pnpm";
  };

  home.sessionPath = [
    "$HOME/.local/share/pnpm/bin"
  ];

  home.pointerCursor = {
    gtk.enable = true;
    x11.enable = true;
    name = "Adwaita";
    size = 24;
    package = pkgs.adwaita-icon-theme;
  };

  gtk = {
    enable = true;
    cursorTheme = {
      name = "Adwaita";
      size = 24;
      package = pkgs.adwaita-icon-theme;
    };
  };
}