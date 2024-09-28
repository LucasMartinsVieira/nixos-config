{ pkgs, ... }:
{
  programs.tmux = {
    enable = false;
    # plugins = with pkgs; [
    plugins = with pkgs.tmuxPlugins; [
      # vim-tmux-navigator
      resurrect
      continuum
    ];
  };
}
