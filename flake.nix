{
  description = "Modular Config NixOS with flakes and Home Manager";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager }: {
    nixosConfigurations.pegasus = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = {
        inherit self nixpkgs home-manager;
        hostname = "pegasus";
        user = "tiagocomba";
      };
      modules = [
        ./hosts/pegasus.nix
        home-manager.nixosModules.home-manager
      ];
      pkgs = import nixpkgs {
        system = "x86_64-linux";
        config = {
          allowUnfreePredicate = pkg: builtins.elem (nixpkgs.lib.getName pkg) [
            "nvidia-x11"
            "nvidia-settings"
          ];
        };
      };
    };

    homeConfigurations.tiagocomba = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
      extraSpecialArgs = {
        inherit self nixpkgs home-manager;
        hostname = "pegasus";
        user = "tiagocomba";
      };
      modules = [
        ./home/home.nix
      ];
    };
  };
}

