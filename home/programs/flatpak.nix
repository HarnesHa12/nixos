{ ... }:

{
  services.flatpak = {
    enable = true;

    packages = [
      { appId = "org.vinegarhq.Sober"; origin = "flathub"; }
    ];
  };
}