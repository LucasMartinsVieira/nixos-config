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
      mangal
      mangohud

      #### Vulkan
      vulkan-tools
      vulkan-validation-layers
      vulkan-loader
      amdvlk

      #### Party tricks
      cmatrix
      cowsay
      lolcat
      figlet

      #### Media
      bitwarden
      cava
      feh
      ffmpeg
      ffmpegthumbnailer
      gimp
      lf
      yazi
      maim
      mpv
      pavucontrol
      swww
      sxiv
      thunderbird
      virt-manager
      yt-dlp
      zathura

      #### Programming
      nodejs_20
      lua
      bun
      nodePackages_latest.pnpm
      zig

      # LSP's

      ## Rust
      rustup
      rocmPackages.llvm.lldb

      ## Go
      delve
      go
      goimports-reviser
      golines
      gomodifytags
      gopls
      gotools

      ## Lua
      lua-language-server
      stylua

      ## Bash
      nodePackages_latest.bash-language-server
      shellcheck

      ## TypeScript
      nodePackages_latest.typescript-language-server
      prettierd
      eslint_d
      biome

      ## Nix
      nil
      statix
      alejandra

      ## Others
      jq
      marksman
      vscode-langservers-extracted # HTML, CSS, JSON, ESLint
      yaml-language-server # YAML
      taplo # TOML
      shfmt
      tailwindcss-language-server

      #### Proprietary
      discord
      obsidian
      spotify
      telegram-desktop
      todoist-electron
      tradingview

      # Tools
      alacritty
      bat
      beekeeper-studio
      bruno
      btop
      docker-compose
      distrobox
      eza
      fd
      freshfetch
      fzf
      gh
      gum
      httpie
      kitty
      lazygit
      neofetch
      neovim
      p7zip
      redshift
      ripgrep
      silicon
      starship
      tealdeer
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
      gnome.pomodoro
      libqalculate
      libreoffice
      pamixer
      playerctl
      poppler

      # Games
      gnuchess
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
