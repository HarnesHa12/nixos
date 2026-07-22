{ inputs, pkgs, ... }:

{
  programs.firefox.enable = true;

  programs.obs-studio = {
    enable = true;

    package = (
      pkgs.obs-studio.override {
        cudaSupport = true;
      }
    );

    plugins = with pkgs.obs-studio-plugins; [
      wlrobs
      obs-backgroundremoval
      obs-pipewire-audio-capture
      obs-vaapi
      obs-gstreamer
      obs-vkcapture
    ];
  };

  environment.systemPackages = with pkgs; [
    brave
    vicinae
    ghostty
    swaybg
    xwayland-satellite
    mission-center
    adwaita-icon-theme
    proton-vpn
    vlc
    inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}