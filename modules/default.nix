{ ... }:

{
  imports = [
    ./core/boot.nix
    ./core/keyboard.nix
    ./core/locale.nix
    ./core/networking.nix
    ./core/nix.nix
    ./core/users.nix

    ./desktop/fonts.nix
    ./desktop/niri.nix
    ./desktop/sddm.nix

    ./hardware/bluetooth.nix
    ./hardware/graphics.nix

    ./programs/audio.nix
    ./programs/desktop.nix
    ./programs/dev.nix
    ./programs/gaming.nix
    ./programs/shell.nix

    ./services/docker.nix
    ./services/tailscale.nix
  ];
}