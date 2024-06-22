{ pkgs, ... }:
{
  programs.hyprland = {
    enable = false;
    xwayland.enable = true;
  };
}
