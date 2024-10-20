{ pkgs, ... }:
{
  home.packages = with pkgs; [
    eslint_d
    nodejs_20
    nodePackages_latest.typescript-language-server
    prettierd
    vscode-langservers-extracted # HTML, CSS, JSON, ESLint
    tailwindcss-language-server
  ];
}
