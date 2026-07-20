{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    gcc
    btop
    bat
  ];
}