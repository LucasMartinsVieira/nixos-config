{ ... }:
{
  # Specify each program separately
  imports = [
    ./dconf.nix
    ./direnv.nix
    ./fish.nix
    ./gnupg.nix
    ./nano.nix
    ./nix-ld.nix
    ./river.nix
    ./steam.nix
    ./tmux.nix
    ./xwayland.nix
    ./zsh.nix
  ];
}
