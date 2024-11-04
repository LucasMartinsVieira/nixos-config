{ pkgs, ... }:
{
  home.packages = with pkgs; [
    deadnix
    nil
    nixfmt-rfc-style
    statix
  ];
}
