{...}: {
  # Specify each hardware separately
  imports = [
    ./opengl.nix
    ./bluetooth.nix
    ./pulseaudio.nix
  ];
}
