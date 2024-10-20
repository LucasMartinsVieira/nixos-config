{ pkgs, config, ... }:
{
  home.packages = with pkgs; [
    kitty
  ];

  home.file = {
    "${config.xdg.configHome}/kitty".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/kitty";
  };
}
