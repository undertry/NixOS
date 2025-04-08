{ pkgs, ... }:

{
  home.packages = with pkgs; [
    flameshot # screenshots
    firefox # browser
  ];
}

