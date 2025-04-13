{ config, ... }:

{
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
      init = "git init";
      remote = "git remote add origin";
      commit = "git commit -m";
      push = "git push -u origin";
      pull = "git pull";
      summary = "~/bin/summary.sh";
      todo = "~/bin/todo.sh";
      note = "~/bin/notes/create/default.sh";
    };
    shellInit = ''
      starship init fish | source
      set -Ux fish_user_paths $fish_user_paths ~/bin
      set -Ux fish_user_paths $fish_user_paths ~/bin/notes/search
      set -Ux fish_user_paths $fish_user_paths ~/bin/notes/create
      set -Ux fish_user_paths $fish_user_paths ~/bin/notes/utils
      set -U fish_user_paths $HOME/.npm-global/bin $fish_user_paths
    '';
  };
}

