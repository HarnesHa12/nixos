{ pkgs, ... }:

{
  services.displayManager.sddm = {
    enable = true;

    wayland = {
      enable = true;
      compositor = "kwin";
    };
    extraPackages = with pkgs; [
      kdePackages.qtmultimedia
    ];
    theme = "sddm-astronaut-theme";

    settings = {
      Theme = {
        CursorTheme = "Adwaita";
        CursorSize = 24;
      };
    };
  };

  environment.systemPackages = with pkgs; [
    (pkgs.sddm-astronaut.override {
      embeddedTheme = "hyprland_kath";
    })
  ];
}
