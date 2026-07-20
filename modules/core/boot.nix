{ pkgs, ... }:

{
  boot = {
    loader.systemd-boot.enable = true;
    loader.efi.canTouchEfiVariables = true;
    loader.timeout = 0;

    plymouth = {
      enable = true;
      theme = "hexagon_dots_alt";
      themePackages = with pkgs; [
        (adi1090x-plymouth-themes.override {
          selected_themes = [ "hexagon_dots_alt" ];
        })
      ];
    };

    consoleLogLevel = 0;
    initrd.verbose = false;
    initrd.availableKernelModules = [
      "amdgpu"
      "nvidia"
      "nvidia_modeset"
      "nvidia_drm"
      "nvidia_uvm"
    ];

    kernelParams = [
      "quiet"
      "splash"
      "boot.shell_on_fail"
      "loglevel=0"
      "rd.systemd.show_status=false"
      "rd.udev.log_level=0"
      "vt.global_cursor_default=0"
      "nvidia_drm.modeset=1"
    ];
  };
}