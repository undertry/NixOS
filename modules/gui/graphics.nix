{ config, pkgs, ... }:

{ 
  services.xserver = {
    videoDrivers = [ "nvidia" "intel" ];
  };

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  hardware.nvidia = {
    open = true;
    modesetting.enable = true;
    nvidiaSettings = true;
    forceFullCompositionPipeline = true;
  };

  boot.kernelParams = [
    "nvidia-drm.modeset=1"
    "i915.modeset=1"
  ];
}
