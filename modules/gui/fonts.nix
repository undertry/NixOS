{ config, pkgs, ... }:

{
  fonts.packages = with pkgs.nerd-fonts; [
    fira-code
    jetbrains-mono
  ];
}

