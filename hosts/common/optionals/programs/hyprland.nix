{ pkgs, ... }:
{
  programs.hyprland = {
    enable = true;
    # extraPackages = with pkgs; [
    #   cliphist-pin.cliphist
    #   eww
    #   fuzzel
    #   grim
    #   imv
    #   kanshi
    #   ristate
    #   slurp
    #   swww
    #   wl-clipboard
    #   wlr-randr
    #   wlsunset
    #   wtype
    # ];
  };
}
