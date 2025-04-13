{ pkgs, ... }:

{
  home.packages = with pkgs; [
    lsd # modern ls alternative
    bat # cat with syntax highlighting
    ranger # file browser in terminal
    fzf # tool for terminal (search app)
    glow # preview for files markdown
    starship # prompt for fish shell
    gettext # tools for app translation and localization
  ];
}

