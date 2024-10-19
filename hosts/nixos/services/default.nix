{ ... }:
{
  # Specify each service separately
  imports = [
    ./auto-cpufreq.nix
    ./devmon.nix
    ./openssh.nix
    ./picom.nix
    ./pipewire.nix
    ./syncthing.nix
    ./udisks2.nix
    ./xserver.nix
  ];
}
