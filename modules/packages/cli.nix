{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    fish # interpreter for commands
    git # version control
    htop # system monitor
    fastfetch # system info tool
  ];
}

