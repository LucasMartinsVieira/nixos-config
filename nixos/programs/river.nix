{ pkgs, ... }: {
  programs.river = {
    enable = true;
    extraPackages = with pkgs; [
      cliphist
      eww-wayland
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
