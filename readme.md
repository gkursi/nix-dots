My nixos configuration

## Usage
1. clone this repo
2. add `include.nix` to your main configuration
```nix
  ...
  {
    imports = [
        ./hardware-configuration.nix
        ...
        ./nix-dots/include.nix
      ];
    ...
  }
```
This will produce a (somewhat) minimal system.

3. add a profile to your configuration (e.g. `./nix-dots/nix/profiles/default.nix`)
```nix
  ...
  {
    imports = [
        ./hardware-configuration.nix
        ...
        ./nix-dots/include.nix
        ./nix-dots/nix/profiles/default.nix
      ];
    ...
  }
```
Custom profiles can be built by including different [components](./nix/profiles/components).
