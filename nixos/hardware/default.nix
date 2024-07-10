{ ... }:
{
  # Specify each hardware separately
  imports = [
    ./bluetooth.nix
    ./graphics.nix
    ./pulseaudio.nix
  ];
}
