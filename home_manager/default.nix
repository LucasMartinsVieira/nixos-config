{
  inputs,
  outputs,
  config,
  ...
}:
{
  imports = [
    # Import home-manager's NixOS module
    inputs.home-manager.nixosModules.home-manager
  ];

  home-manager = {
    extraSpecialArgs = {
      inherit inputs outputs;
    };
    users = {
      # Import your home-manager configuration
      # lucas = import ./users/lucas/home.nix;
      lucas = import (./users/lucas/${config.networking.hostName}.nix);
      # lucas = import (./users/lucas/nixos.nix);
    };
  };
}
