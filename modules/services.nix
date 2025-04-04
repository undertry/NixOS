{ config, pkgs, ... }:

{
  services.xserver.enable = true;
  services.xserver.windowManager.i3.enable = true;
  services.xserver.xkb.layout = "es";
  services.pulseaudio.enable = false;
  services.pipewire.enable = true;
  hardware.alsa.enable = false;
  services.openssh.enable = false;
  networking.firewall.enable = false;
}
