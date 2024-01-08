{ pkgs ,... }: { 
  programs.tmux = {
    enable = true;
    # plugins = with pkgs; [
    plugins = with pkgs.tmuxPlugins; [
       # vim-tmux-navigator
       resurrect
       continuum
    ];
  };
}
