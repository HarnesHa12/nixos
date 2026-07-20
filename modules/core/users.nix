{ pkgs, ... }:

{
  users.users.harnes = {
    isNormalUser = true;
    shell = pkgs.fish;
    extraGroups = [ "networkmanager" "wheel" ];
  };
}