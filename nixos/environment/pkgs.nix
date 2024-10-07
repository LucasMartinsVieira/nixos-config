{ inputs, pkgs, ... }:
{
  environment = {
    defaultPackages = [ ];
    systemPackages = with pkgs; [
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
      amdvlk
      vulkan-loader
      vulkan-tools
      vulkan-validation-layers

      ## Browsers
      librewolf
      inputs.zen-browser.packages."${system}".specific

      ## Proprietary 
      discord
      obsidian
      spotify
      telegram-desktop
      tradingview

      ## Code

      ### Rust
      bacon
      rustup
      # rocmPackages.llvm.lldb

      ### Go 
      go
      goimports-reviser
      golines
      gopls

      ### Lua
      lua
      lua-language-server
      stylua

      ### Nix
      nixfmt-rfc-style
      nil
      statix

      ### TypeScript
      eslint_d
      nodejs_20
      nodePackages_latest.typescript-language-server
      prettierd

      ### Bash
      nodePackages_latest.bash-language-server
      shellcheck

      ### Java
      gradle
      maven
      # jdk
      # jdt-language-server
      jetbrains.idea-community
      kotlin

      ### Others
      jq
      markdown-oxide
      # marksman
      vscode-langservers-extracted # HTML, CSS, JSON, ESLint
      shfmt
      yaml-language-server
      taplo
      tailwindcss-language-server

      ## CLI Tools
      ani-cli
      bat
      borgbackup
      brightnessctl
      btop
      cmatrix
      docker-compose
      dunst
      eza
      fd
      ffmpeg
      ffmpegthumbnailer
      freshfetch
      fzf
      gum
      httpie
      imagemagick
      lazydocker
      lazygit
      lf
      libqalculate
      lolcat
      mpv
      neovim
      p7zip
      pamixer
      playerctl
      poppler
      ripgrep
      sesh
      silicon
      starship
      tlrc
      tokei
      trash-cli
      yazi
      yt-dlp
      zoxide

      ## GUI Tools
      beekeeper-studio
      kitty

      ## GUI Apps
      flowtime
      gimp
      libreoffice
      mousam
      pavucontrol
      stable.komikku
      thunderbird
      transmission_4-gtk
      virt-manager
      warpinator
      zathura

      ## X11
      feh
      maim
      redshift
      sxiv

      ## Wayland
      cliphist
      eww
      fuzzel
      grim
      imv
      mpvpaper
      niri
      ristate
      rofi-wayland
      slurp
      swww
      waybar
      wf-recorder
      wl-clipboard
      wlr-randr
      wlsunset
      wtype

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
