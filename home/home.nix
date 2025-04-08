{ config, pkgs, user, ... }:

{
  imports = [
    ./programs.nix
    ./config.nix
  ];

  home.username = user;
  home.homeDirectory = "/home/${user}";
  home.stateVersion = "24.11";
}
