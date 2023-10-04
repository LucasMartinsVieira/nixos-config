{ ... }: {
  # Specify each program separately
  imports = [
    ./dconf.nix
    ./fish.nix
    ./gnupg.nix
    ./hyprland.nix
    ./river.nix
    ./steam.nix
    ./tmux.nix
    ./xwayland.nix
  ];
}
