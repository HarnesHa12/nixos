{ pkgs, ... }:

{
  home.packages = with pkgs; [
    vscode
    vesktop
    fastfetch
    nodejs
    rustup
    unstable.pnpm
  ];
}