{ ... }:

{
  hardware.graphics.enable = true;

  services.xserver.videoDrivers = [ "nvidia" "amdgpu" ];

  hardware.nvidia = {
    open = true;

    modesetting.enable = true;
    
    prime = {
      sync.enable = true;

      amdgpuBusId = "PCI:5@0:0:0";
      nvidiaBusId = "PCI:1@0:0:0";
    };
  };
}