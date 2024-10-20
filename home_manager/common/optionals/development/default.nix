{ pkgs, ... }:
{
  imports = [
    ./bash.nix
    ./go.nix
    # ./java.nix
    ./javascript.nix
    ./lua.nix
    ./nix.nix
    ./rust.nix
  ];

  home.packages = with pkgs; [
    jq
    markdown-oxide
    yaml-language-server
    taplo
  ];
}
