{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    alsa-utils
    playerctl
  ];
}