{ pkgs, ... }:
{
  programs.river = {
    enable = true;
    extraPackages = with pkgs; [
      # clipboard-jh
      eww
      grim
      imv
      mpvpaper
      ristate
      rofi-wayland
      slurp
      waybar
      wf-recorder
      wl-clipboard
      wlr-randr
      wlsunset
      wtype
    ];
  };
}
