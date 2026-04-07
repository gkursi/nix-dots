{
	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
		spicetify-nix.url = "github:Gerg-L/spicetify-nix";

		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = inputs@{ self, nixpkgs, home-manager, spicetify-nix, ... }: {
		nixosConfigurations.toaster = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";

			specialArgs = {
				inherit inputs;
			};

			modules = [
				./configuration.nix
				home-manager.nixosModules.home-manager
				spicetify-nix.nixosModules.default
			];
		};
	};
}
