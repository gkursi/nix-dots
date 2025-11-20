My nixos configuration

## Usage
Clone this repo and add `include.nix` to your main configuration
```nix
...
{
  imports =
    [
      ./hardware-configuration.nix
      ...
      ./nix-dots/include.nix
    ];
  ...
}
```

> [!WARNING]
> The config doesn't contain `system.stateVersion` or the hardware configuration
> and thus cannot be used without including it in a functional config.

> [!NOTE]
> The `nix/hardware.nix` file includes drivers for nvidia as well as pipewire (which overrides pulseaudio)
> You might want to disable that in `include.nix`
