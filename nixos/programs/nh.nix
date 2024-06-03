{ ... }:
{
  programs.nh = {
    enable = false;
    clean.enable = false;
    clean.extraArgs = "--keep-since 7d --keep 5";
    flake = "/home/lucas/repos/nixos-config/";
  };
}
