{
  pkgs,
  config,
  ...
}: {
  environment = {
    defaultPackages = [];
    systemPackages = with pkgs; [
      # TODO: Rewrite groups of packages like 'Core'

      #### Core
      lld
      gcc
      glibc
      clang
      llvmPackages.bintools
      wget
      killall
      zip
      unzip
      exfat
      lm_sensors
      gnumake
      pkg-config
      bc
      libnotify
      cryptsetup
      git

      ani-cli
      komikku

      #### Vulkan
      vulkan-tools
      vulkan-validation-layers
      vulkan-loader
      amdvlk

      #### Party tricks
      cmatrix
      lolcat

      #### Media
      bitwarden
      cava
      cinnamon.warpinator
      feh
      ffmpeg
      ffmpegthumbnailer
      gimp
      lf
      maim
      mpv
      pavucontrol
      swww
      sxiv
      thunderbird
      transmission
      virt-manager
      yazi
      yt-dlp
      zathura

      ## Browsers
      librewolf
      ungoogled-chromium

      #### Programming

      # LSP's

      ## Rust
      bacon
      rustup
      rocmPackages.llvm.lldb

      ## Java
      python3
      gradle
      jdk
      # jdt-language-server
      jetbrains.idea-community
      kotlin
      maven

      ## Lua
      lua
      lua-language-server
      stylua

      ## Bash
      nodePackages_latest.bash-language-server
      shellcheck

      ## TypeScript
      biome
      bun
      eslint_d
      nodejs_20
      nodePackages_latest.pnpm
      nodePackages_latest.typescript-language-server
      prettierd

      ## Nix
      alejandra
      nh
      nil
      statix

      ## Others
      jq
      marksman
      vscode-langservers-extracted # HTML, CSS, JSON, ESLint
      shfmt
      yaml-language-server
      # tailwindcss-language-server

      #### Proprietary
      discord
      obsidian
      spotify
      telegram-desktop
      ticktick
      tradingview

      # Tools
      # alacritty
      bat
      beekeeper-studio
      bruno
      btop
      docker-compose
      eza
      fd
      freshfetch
      fzf
      gh
      httpie
      kitty
      lazygit
      # neovim
      p7zip
      redshift
      ripgrep
      silicon
      starship
      tlrc
      tokei
      trash-cli
      zoxide

      # Wayland (hyprland)
      cliphist
      eww
      grim
      imv
      mpvpaper
      ristate
      rofi-wayland
      slurp
      waybar
      wf-recorder
      wl-clipboard
      wlr-randr
      wlsunset
      wtype

      #### Others
      brightnessctl
      dunst
      gnome.adwaita-icon-theme
      libqalculate
      libreoffice
      pamixer
      playerctl
      poppler
      qbittorrent

      # Games
      mangohud
      protonup
      stable.pcsx2
      (stable.retroarch.override {
        cores = with stable.libretro; [
          # Nintendo
          nestopia # NES
          snes9x # SNES
          citra # 3DS
          dolphin # Wii

          # Playstation
          pcsx2
        ];
      })
    ];
  };
}
