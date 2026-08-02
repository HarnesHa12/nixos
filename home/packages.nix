{ pkgs, ... }:

{
  programs.direnv.enable = true;

  home.packages = with pkgs; [
    vscode
    vesktop
    discord
    fastfetch
    openssl
    prismlauncher
    unzip
    kdePackages.dolphin
    termius
    unstable.zed-editor
  ];
}
