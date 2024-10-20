{ pkgs, ... }:
{
  home.packages = with pkgs; [
    discord
    obsidian
    # spotify
    telegram-desktop
    tradingview
  ];
}
