{ pkgs, ... }:
{
  fonts = {
    fontconfig.enable = true;
    packages = with pkgs; [
      corefonts
      nerd-fonts.fira-code
      nerd-fonts.fira-mono
      nerd-fonts.geist-mono
      nerd-fonts.jetbrains-mono
      nerd-fonts.meslo-lg
      noto-fonts
      noto-fonts-emoji
      vistafonts
    ];
  };
}
