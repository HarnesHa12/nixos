{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    profiles.default.extensions = 
      (with pkgs.vscode-extensions; [
        zhuangtongfa.material-theme
        rust-lang.rust-analyzer
        biomejs.biome
        jnoortheen.nix-ide
        bradlc.vscode-tailwindcss
      ]) ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
          name = "discord-vscode";
          publisher = "icrawl";
          version = "5.9.2";
          sha256 = "sha256-43ZAwaApQBqNzq25Uy/AmkQqprU7QlgJVVimfCaiu9k=";
        }
      ];
    profiles.default.userSettings = {
      "workbench.colorTheme" = "One Dark Pro";
      "editor.autoSave" = "afterDelay";
      "files.associations" = {
        "*.css" = "tailwindcss";
      };
    };
  };
}