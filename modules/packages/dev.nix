{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    helix # code editor
  ];
}

