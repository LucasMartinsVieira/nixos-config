{ pkgs, ... }: {
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
      sl
      lolcat
      figlet

      #### Browser
      brave
      librewolf-wayland

      #### Media
      bitwarden
      cava
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
      telegram-desktop
      thunderbird
      virt-manager
      yt-dlp
      zathura

      #### Programming 
      rustup
      go
      nodejs_20
      lua
      bun
      zig
      docker-compose
      beekeeper-studio
      insomnia

      # LSP's

      ## Rust

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

      ## Others
      jq
      marksman
      nil
      rocmPackages.llvm.lldb
      vscode-langservers-extracted # HTML, CSS, JSON, ESLint
      yaml-language-server # YAML
      shfmt

      # Editors
      helix
      neovim

      # Tools
      lazygit
      tokei
      tealdeer

      #### Proprietary
      discord
      obsidian
      spotify

      alacritty
      bat
      btop
      eza
      fd
      freshfetch
      fzf
      gum
      kitty
      neofetch
      p7zip
      redshift
      ripgrep
      starship
      trash-cli
      zoxide

      #### Wayland
      cliphist
      eww-wayland
      grim
      imv
      kanshi
      mpvpaper
      rofi-emoji
      rofi-pass-wayland
      rofi-wayland
      slurp
      waybar
      wf-recorder
      wl-clipboard
      wlogout
      wlr-randr
      wlsunset
      wtype

      #### Others
      brightnessctl
      dunst
      gnome.adwaita-icon-theme
      gnome.pomodoro
      gnuchess
      libqalculate
      pamixer
      playerctl
      poppler

      # Games
      pcsx2
      (retroarch.override {
        cores = with libretro; [ 
          # Nintendo
          nestopia # NES
          snes9x   # SNES
          citra    # 3DS
          dolphin  # Wii

          # Playstation
          pcsx2 
        ];
      })
    ];
  };
}
