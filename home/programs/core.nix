{ pkgs, ... }:

{
  home.packages = with pkgs; [
    pamixer # cli tool for controlling audio volume
    playerctl # cli for controlling media players
    nitrogen # app for wallpapers
    flatpak # for managin apps
    xdotool # tools for terminal
    udisks2 # extra fot detect usb
  ];
}

