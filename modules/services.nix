{ config, pkgs, ... }:

{
  services.xserver.enable = true;
  services.xserver.windowManager.i3.enable = true;
  services.xserver.xkb.layout = "es";
  services.pulseaudio.enable = false;
  services.pipewire.enable = true;
  services.openssh.enable = false;
  networking.firewall.enable = false;
  services.flatpak.enable = true;
  xdg.portal.enable = true;
  xdg.portal.config.common.default = "*";
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  services.xserver.displayManager.lightdm.enable = true;
  services.displayManager.autoLogin = {
    enable = true;
    user = "tiagocomba";
  };
}
