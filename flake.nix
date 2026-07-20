{
  description = "I love femboys";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-26.05";
    unstable.url = "nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    spicetify-nix = {
      url = "github:Gerg-L/spicetify-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    niri = {
      url = "github:sodiboo/niri-flake";
      inputs.nixpkgs.follows = "unstable";
    };

    noctalia = {
      url = "github:noctalia-dev/noctalia/legacy-v4";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ self, nixpkgs, unstable, home-manager, niri, noctalia, ... }: {
    nixosConfigurations.femboy = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };

      modules = [
        ({ config, pkgs, ...  }: {
          nixpkgs.overlays = [
            (final: prev: {
              unstable = import unstable {
                inherit (final.stdenv.hostPlatform) system;
                inherit (final) config;
              };
            })
          ];
        })
        ./configuration.nix
        home-manager.nixosModules.home-manager
        {
          home-manager = {
            extraSpecialArgs = { inherit inputs; };
            useGlobalPkgs = true;
            useUserPackages = true;
            users.harnes = import ./home;
            backupFileExtension = "backup";
          };
        }
      ];
    };
  };
}
