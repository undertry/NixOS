{ config, ... }:

{
  programs.git = {
    enable = true;
    userName  = "undertry";
    userEmail = "zzzizy@proton.me";
  };
  programs.fish = {
    enable = true;
    shellAliases = {
      ls = "lsd";
      lsa = "lsd -a";
      lsl = "lsd -l";
      lsla = "lsd -la";
      fs = "fastfetch";
      "." = "cd ~/.config";
      nixos = "cd /etc/nixos";
      rebuild-nixos = "sudo nixos-rebuild switch --flake .#pegasus";
      rebuild-home = "home-manager switch --flake .#tiagocomba";
      pr = "cd ~/Documents/Projects";
      n = "cd ~/Documents/Notes";
      hxs = "sudo -E hx";
      hxc = "hx ~/.config";
      r = "ranger";
      usb1 = "sudo mount /dev/sda1 /mnt/usb1";
      usb2 = "sudo mount /dev/sdb1 /mnt/usb2";
    };
    shellInit = ''
      starship init fish | source
      set -Ux fish_user_paths $fish_user_paths ~/bin
      '';
  };
  programs.firefox = {
    enable = true;
  };
  programs.helix = {
    enable = true;
    defaultEditor = true;
  };
}
