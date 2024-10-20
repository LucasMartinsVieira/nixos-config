# This is your system's configuration file.
# Use this to configure your system environment (it replaces /etc/nixos/configuration.nix)
{
  inputs,
  outputs,
  lib,
  config,
  pkgs,
  ...
}:
{
  # You can import other NixOS modules here
  imports = [
    # If you want to use modules your own flake exports (from modules/nixos):
    # outputs.nixosModules.example

    # Or modules from other flakes (such as nixos-hardware):
    # inputs.hardware.nixosModules.common-cpu-amd
    # inputs.hardware.nixosModules.common-ssd

    # You can also split up your configuration and import pieces of it here:

    # Required Configs
    ../common/core

    # Optinals
    ../common/optionals/services/auto-cpufreq.nix
    ../common/optionals/services/devmon.nix
    ../common/optionals/services/picom.nix
    ../common/optionals/services/openssh.nix
    ../common/optionals/services/picom.nix
    ../common/optionals/services/pipewire.nix
    ../common/optionals/services/syncthing.nix
    ../common/optionals/services/udisks2.nix
    ../common/optionals/services/xserver.nix

    ../common/optionals/hardware/graphics.nix
    ../common/optionals/hardware/bluetooth.nix
    ../common/optionals/hardware/graphics.nix

    ../common/optionals/virtualisation/docker.nix
    ../common/optionals/virtualisation/libvirtd.nix

    ../common/optionals/programs/dconf.nix
    ../common/optionals/programs/direnv.nix
    ../common/optionals/programs/fish.nix
    ../common/optionals/programs/gnupg.nix
    ../common/optionals/programs/nano.nix
    ../common/optionals/programs/nix-ld.nix
    ../common/optionals/programs/river.nix
    ../common/optionals/programs/steam.nix
    ../common/optionals/programs/tmux.nix
    ../common/optionals/programs/xwayland.nix
    ../common/optionals/programs/zsh.nix

    ./modules/boot.nix
    ./modules/networking.nix
    ./environment

    # Import your generated (nixos-generate-config) hardware configuration
    ./hardware-configuration.nix
  ];

  nixpkgs = {
    # You can add overlays here
    overlays = [
      # Add overlays your own flake exports (from overlays and pkgs dir):
      outputs.overlays.additions
      outputs.overlays.modifications
      outputs.overlays.stable-packages
      outputs.overlays.cliphist-pin

      # You can also add overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default
    ];
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      allowUnfree = true;
      permittedInsecurePackages = lib.optional (pkgs.obsidian.version == "1.5.3") "electron-25.9.0";
    };
  };

  nix = {
    # This will add each flake input as a registry
    # To make nix3 commands consistent with your flake
    registry = lib.mapAttrs (_: value: { flake = value; }) inputs;

    # This will additionally add your inputs to the system's legacy channels
    # Making legacy nix commands consistent as well, awesome!
    nixPath = lib.mapAttrsToList (key: value: "${key}=${value.to.path}") config.nix.registry;

    settings = {
      # Enable flakes and new 'nix' command
      experimental-features = "nix-command flakes";
      # Deduplicate and optimize nix store
      auto-optimise-store = true;
    };

    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
  };

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  system.stateVersion = "23.11";
}
