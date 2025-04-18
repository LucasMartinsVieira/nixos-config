{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    ## Bash
    nodePackages_latest.bash-language-server
    shellcheck
    shfmt

    ## Go
    go
    goimports-reviser
    golines
    gopls

    ## Java
    gradle
    # jdk23
    jetbrains.idea-community
    maven

    # kotlin

    ## JavaScript
    eslint_d
    nodejs_22
    nodePackages_latest.typescript-language-server
    prettierd
    tailwindcss-language-server
    vscode-langservers-extracted # HTML, CSS, JSON, ESLint
    yarn

    ## Lua
    lua
    lua-language-server
    stylua

    ## Nix
    deadnix
    nil
    nixfmt-rfc-style
    statix

    ## Rust
    rustup
    bacon

    ## Others
    beekeeper-studio
    bruno
    httpie
    jq
    markdown-oxide
    neovim
    taplo
    yaml-language-server
  ];
}
