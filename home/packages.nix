{ pkgs, ... }:

{
  home.packages = with pkgs; [
    vscode
    vesktop
    discord
    fastfetch
    nodejs
    rustup
    unstable.pnpm
  ];
}