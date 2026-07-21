{ inputs, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    brave
    vicinae
    ghostty
    swaybg
    xwayland-satellite
    mission-center
    adwaita-icon-theme
    proton-vpn
    inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}