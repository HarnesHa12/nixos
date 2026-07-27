{ inputs, ... }:

{
  imports = [
    ./user.nix

    ./packages.nix

    ./programs/discord.nix
    ./programs/fastfetch.nix
    ./programs/fish.nix
    ./programs/flatpak.nix
    ./programs/ghostty.nix
    ./programs/niri.nix
    ./programs/noctalia.nix
    ./programs/spicetify.nix
    ./programs/starship.nix
    ./programs/vicinae.nix
    ./programs/vscode.nix

    inputs.niri.homeModules.niri
    inputs.noctalia.homeModules.default
    inputs.spicetify-nix.homeManagerModules.default
    inputs.nix-flatpak.homeManagerModules.nix-flatpak
  ];
}