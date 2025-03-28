{ pkgs, ... }:
{
  programs.river = {
    enable = true;
    extraPackages = with pkgs; [
      cliphist-pin.cliphist
      eww
      fuzzel
      grim
      imv
      kanshi
      ristate
      slurp
      swaybg
      swww
      wl-clipboard
      wlr-randr
      wlsunset
      wtype
    ];
  };
}
