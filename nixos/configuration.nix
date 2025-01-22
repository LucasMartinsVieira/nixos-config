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

    # Folders
    ./environment
    ./hardware
    ./programs
    ./services
    ./virtualisation

    # Files
    ./console.nix
    ./fonts.nix
    ./i18n.nix
    ./security.nix
    ./time.nix
    ./users.nix
    ./xdg.nix

    # Import your generated (nixos-generate-config) hardware configuration
    ./hardware-configuration.nix
  ];

  boot = {
    # Try to make suspension not suck on my machine
    kernelParams = [
      # "video=eDP-1:1920x1080"
      # "video=HDMI-A-1:1920x1080"
      # "amdgpu.dc=1"
      # "amdgpu.securedisplay=0"
    ];
    kernelPackages = pkgs.linuxPackages_latest;
    kernelModules = [ "amdgpu" ];
    initrd = {
      # luks.devices."luks-8ff284ea-f99c-4e60-a7eb-608427b597f2".device = "/dev/disk/by-uuid/8ff284ea-f99c-4e60-a7eb-608427b597f2";
      # luks.devices."luks-eadfff45-7cad-48b0-a667-900574f082d5".device = "/dev/disk/by-uuid/eadfff45-7cad-48b0-a667-900574f082d5";
      # luks.devices."luks-c0d4c0e0-1ade-48b4-9352-6927d1fbbef4".device = "/dev/disk/by-uuid/c0d4c0e0-1ade-48b4-9352-6927d1fbbef4";
      luks.devices."luks-247812d3-d396-457d-a6f5-f96c34b10ca5".device =
        "/dev/disk/by-uuid/247812d3-d396-457d-a6f5-f96c34b10ca5";
      kernelModules = [ "amdgpu" ];
    };
    loader = {
      systemd-boot.enable = true;
      timeout = 0;
      efi.canTouchEfiVariables = true;
    };
  };

  networking = {
    hostName = "nixos";
    networkmanager.enable = true;

    firewall = {
      allowedTCPPorts = [
        80 # HTTP
        443 # HTTPS

        # 42000 # Warpinator
        # 42001 # Warpinator
      ];
      allowedUDPPorts = [
        # 42000 # Warpinator
        # 42001 # Warpinator
      ];
      trustedInterfaces = [ "docker0" ];
      enable = true;
    };
  };

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
      # Cosmic
      substituters = [ "https://cosmic.cachix.org/" ];
      trusted-public-keys = [ "cosmic.cachix.org-1:Dya9IyXD4xdBehWjrkPv6rtxpmMdRel02smYzA85dPE=" ];
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
