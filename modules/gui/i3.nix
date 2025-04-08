{ config, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    displayManager.lightdm.enable = true;
    windowManager.i3.enable = true;

    xkb.layout = "es";
  };

  programs.dconf.enable = true;

  environment.variables.GTK_THEME = "Adwaita-dark";

  services.picom = {
    enable = true;
    fade = false;
    shadow = false;
    vSync = true;
  };
  
  environment.systemPackages = with pkgs; [
    i3 # tiling window manager
    i3status # status bar for i3
    dmenu # dynamic menu launcher
    picom # lightweight compositor for x11
    alacritty # terminal
  ];
}

