{ config, pkgs, ... }:

{
  services.displayManager.autoLogin = {
    enable = true;
    user = "tiagocomba";
  };
}

