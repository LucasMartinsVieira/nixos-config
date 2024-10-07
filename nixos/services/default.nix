{ ... }:
{
  # Specify each service separately
  imports = [
    ./auto-cpufreq.nix
    ./avahi.nix
    ./devmon.nix
    ./openssh.nix
    ./picom.nix
    ./pipewire.nix
    ./printing.nix
    ./syncthing.nix
    ./transmission.nix
    ./udisks2.nix
    ./xserver.nix
  ];
}
