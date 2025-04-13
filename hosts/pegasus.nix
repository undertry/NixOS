{ config, pkgs, hostname, user, ... }:

{
  imports = [
    ../modules/packages
    ../modules/services
    ../modules/system.nix
    ../modules/gui
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.grub.device = "/dev/nvme0n1";

  networking.hostName = hostname;

  fileSystems."/" = {
    device = "/dev/disk/by-uuid/76b5bfba-e7a7-4db4-9b9e-6a7591372a5e";
    fsType = "ext4";
  };

  users.users.${user} = {
    isNormalUser = true;
    extraGroups = [ "wheel" "video" "input" ];
    shell = pkgs.fish;
    ignoreShellProgramCheck = true;
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  environment.systemPackages = with pkgs; [ home-manager ];

  system.stateVersion = "24.11";
}

