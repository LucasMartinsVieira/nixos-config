{ pkgs, ... }:
{
  programs.direnv = {
    enable = true;
    silent = true;
  };

  environment.systemPackages = with pkgs; [
    devenv
  ];
}
