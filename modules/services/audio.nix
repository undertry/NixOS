{ config, pkgs, ... }:

{
  services.pulseaudio.enable = false;
  services.pipewire.enable = true;
}

