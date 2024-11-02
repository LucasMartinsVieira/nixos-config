{ pkgs, ... }:
{
  home.packages = with pkgs; [
    discord
    obsidian
    spotify-adblock
    telegram-desktop
    tradingview
  ];
}
