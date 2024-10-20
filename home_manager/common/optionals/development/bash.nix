{ pkgs, ... }:
{
  home.packages = with pkgs; [
    go
    goimports-reviser
    golines
    gopls
  ];
}
