{ pkgs, ... }: {
  environment = {
    defaultPackages =  [];
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
      librewolf-wayland
      ungoogled-chromium
      brave

      #### Media
      yt-dlp
      cava
      pavucontrol
      zathura
      lf
      ffmpeg
      ffmpegthumbnailer
      mpv
      thunderbird
      virt-manager
      feh
      gimp
      swww
      sxiv
      maim

      #### Programming 
      rustup
      go
      nodejs_20
      lua

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
      nil
      nodePackages_latest.vscode-json-languageserver
      llvmPackages_rocm.lldb
      marksman
      jq

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

      starship      
      redshift
      bat
      p7zip
      freshfetch
      neofetch
      trash-cli
      fzf
      fd
      ripgrep
      btop
      eza
      kitty
      alacritty
      zoxide
 
      #### Wayland
      rofi-wayland
      rofi-pass-wayland
      rofi-emoji
      wlr-randr
      kanshi
      waybar
      mpvpaper
      imv
      grim
      slurp
      wl-clipboard
      cliphist
      wlsunset
      wf-recorder
      wtype
      wlogout

      #### Others
      dunst
      brightnessctl
      gnome.adwaita-icon-theme
      gnome.pomodoro
      gnuchess
      libqalculate
      pamixer
      playerctl
      poppler
    ];
  };
}
