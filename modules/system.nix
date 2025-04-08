{ config, pkgs, ... }:

{
  time.timeZone = "America/Argentina/Buenos_Aires";

  i18n = {
    defaultLocale = "es_AR.UTF-8";
    supportedLocales = [ "es_AR.UTF-8/UTF-8" "en_US.UTF-8/UTF-8" ];
  };
}

