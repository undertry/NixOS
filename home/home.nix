{ config, pkgs, ...}:

{
  imports = [
    ./programs.nix
    ./config.nix
  ];

  home.username = "tiagocomba";
  home.homeDirectory = "/home/tiagocomba";
  home.stateVersion = "24.11";
}
