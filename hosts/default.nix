{ config, pkgs, ... }:

{
  imports = [
   ../modules/packages.nix
   ../modules/services.nix
   ../modules/system.nix
  ];

  boot.loader.grub.device = "dev/nvme0n1";
  boot.loader.systemd-boot.enable = true;
  networking.hostName = "pegasus";

  fileSystems."/" = {
    device = "/dev/disk/by-uuid/76b5bfba-e7a7-4db4-9b9e-6a7591372a5e";
    fsType = "ext4";
  };

  users.users.tiagocomba = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  environment.systemPackages = with pkgs; [ home-manager ];
    
  system.stateVersion = "24.11";
}
