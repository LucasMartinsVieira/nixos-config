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
      ristate
      slurp
      swww
      wl-clipboard
      wlr-randr
      wlsunset
      wtype
    ];
  };
}
