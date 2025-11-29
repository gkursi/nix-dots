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
This will produce a (somewhat) minimal x11/i3 system with alacritty.

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

> [!WARNING]
> The config doesn't contain `system.stateVersion` or the hardware configuration
> and cannot be used without including it in a functional config.

> [!NOTE]
> By default, only nvidia drivers are included.
