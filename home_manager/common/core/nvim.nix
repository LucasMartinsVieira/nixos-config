{ pkgs, config, ... }:
{
  home.packages = with pkgs; [
    neovim
  ];

  home.file = {
    "${config.xdg.configHome}/nvim".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/nvim";
  };
}
