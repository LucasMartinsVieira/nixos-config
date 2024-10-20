{ pkgs, ... }:
{
  fonts.fontconfig = {
    enable = true;
  };

  home.packages = with pkgs; [
    nerdfonts
    noto-fonts
    noto-fonts-emoji
    corefonts
    vistafonts
  ];
}
