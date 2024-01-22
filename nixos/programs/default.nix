{ ... }: {
  # Specify each program separately
  imports = [
    ./dconf.nix
    ./firefox.nix
    ./fish.nix
    ./gnupg.nix
    ./hyprland.nix
    ./nano.nix
    ./river.nix
    ./steam.nix
    ./tmux.nix
    ./xwayland.nix
  ];
}
