{ ... }:

{
  programs.fish = {
    enable = true;

    interactiveShellInit = ''
      set fish_greeting

      fastfetch
    '';

    shellAliases = {
      nrs = "sudo nixos-rebuild switch --flake ~/nixos#femboy";
    };
  };
}