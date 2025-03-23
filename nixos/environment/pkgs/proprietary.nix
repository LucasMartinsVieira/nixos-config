{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    discord
    figma-linux
    obsidian
    spotify-adblock
    telegram-desktop
    tradingview
    youtube-music
  ];
}
