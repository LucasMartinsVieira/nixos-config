{ ... }: {
  # Specify each program separately
  imports = [
    ./fish.nix
    ./dconf.nix
    ./gnupg.nix
    ./hyprland.nix
    ./river.nix
    ./xwayland.nix
    ./steam.nix
  ];
}
