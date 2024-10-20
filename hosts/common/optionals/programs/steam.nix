{ pkgs, ... }:
{
  programs.steam = {
    enable = true;
    package = pkgs.stable.steam;
  };
  programs.gamemode = {
    enable = true;
  };
}
