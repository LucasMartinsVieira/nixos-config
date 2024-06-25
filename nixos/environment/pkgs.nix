{ pkgs, config, ... }:
{
  environment = {
    defaultPackages = [ ];
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
      stable.komikku

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
      borgbackup
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
      transmission_4-gtk
      virt-manager
      yazi
      yt-dlp
      zathura

      ## Browsers
      librewolf

      #### Programming

      # LSP's

      ## Rust
      bacon
      rustup
      rocmPackages.llvm.lldb

      ## Java
      gradle
      maven
      # jdk
      # jdt-language-server
      jetbrains.idea-community
      kotlin

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
      nixfmt-rfc-style
      nil
      statix

      ## Others
      jq
      marksman
      vscode-langservers-extracted # HTML, CSS, JSON, ESLint
      shfmt
      yaml-language-server
      taplo
      # tailwindcss-language-server

      #### Proprietary
      discord
      obsidian
      spotify
      telegram-desktop
      tradingview

      # Tools
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
      lazydocker
      lazygit
      neovim
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
      niri
      cliphist
      eww
      fuzzel
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
      trayer

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
