{ ... }:
{
  # Specify each service separately
  imports = [
    ./docker.nix
    ./libvirtd.nix
  ];
}
