{ pkgs, ... }:

{
  home.packages = with pkgs; [
    i3 # tiling window manager
    i3status # status bar for i3
    dmenu # dynamic menu launcher
    lsd # modern ls alternative
    bat # cat with syntax highlighting
    firefox # browser
    alacritty # terminal
    picom # lightweight compositor fot x11
    pamixer # CLI tool for controlling audio volume, supports PulseAudio
    playerctl # CLI for controlling media players (like Spotify, VLC, etc.)
    nitrogen # app for wallpapers
  ];
}
