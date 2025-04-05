{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    helix # code editor
    zellij # terminal multiplexer
    git # version control
    htop # system monitor
    fastfetch # system info tool
    fish # interpreter for commands
  ];
}
