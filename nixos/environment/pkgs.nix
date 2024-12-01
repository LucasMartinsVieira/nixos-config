{
  pkgs,
  inputs,
  config,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    # TODO: Rewrite groups of packages like 'Core'

    ## Core
    bc
    clang
    cryptsetup
    exfat
    gcc
    git
    glibc
    gnumake
    killall
    libnotify
    lld
    llvmPackages.bintools
    lm_sensors
    openssl
    pkg-config
    unzip
    wget
    zip

    ## Vulkan
    mesa
    amdvlk
    vulkan-loader
    vulkan-tools
    vulkan-validation-layers

    ## Browsers
    librewolf
    inputs.zen-browser.packages."${system}".specific
    brave

    kitty
    neovim

    # Bat
    bat
    bat-extras.batman
    bat-extras.batwatch
    bat-extras.batdiff

    # CLI
    ani-cli
    borgbackup
    brightnessctl
    btop
    docker-compose
    dunst
    eza
    fd
    ffmpeg
    ffmpegthumbnailer
    fzf
    httpie
    imagemagick
    lazydocker
    lazygit
    lf
    mpv
    p7zip
    playerctl
    poppler
    ripgrep
    rofi-wayland
    sesh
    starship
    tlrc
    tokei
    yazi
    yt-dlp
    zapnote
    zoxide

    # GUI
    beekeeper-studio
    flowtime
    foliate
    gimp
    libreoffice
    localsend
    mangayomi
    pavucontrol
    thunderbird
    transmission_4-gtk
    virt-manager
    warpinator
    zathura

    # Proprietary
    discord
    obsidian
    spotify-adblock
    telegram-desktop
    tradingview

    # Dev

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
    maven
    jdk
    jdt-language-server
    jetbrains.idea-community
    kotlin

    ## JavaScript
    eslint_d
    nodejs_20
    nodePackages_latest.typescript-language-server
    prettierd
    vscode-langservers-extracted # HTML, CSS, JSON, ESLint
    tailwindcss-language-server

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
    jq
    markdown-oxide
    yaml-language-server
    taplo

  ];
}
