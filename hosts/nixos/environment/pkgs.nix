{
  inputs,
  config,
  pkgs,
  ...
}:
{
  environment = {
    defaultPackages = [ ];
    systemPackages =
      with pkgs;
      [
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
        stable.amdvlk
        vulkan-loader
        vulkan-tools
        vulkan-validation-layers

        ## Browsers
        librewolf
        inputs.zen-browser.packages."${system}".specific

        ## Proprietary 
        discord
        obsidian
        # spotify
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
        shfmt

        ### Java
        # gradle
        # maven
        # jdk
        # jdt-language-server
        # jetbrains.idea-community
        # kotlin

        ### Others
        jq
        markdown-oxide
        vscode-langservers-extracted # HTML, CSS, JSON, ESLint
        yaml-language-server
        taplo
        tailwindcss-language-server

        ## Tools
        ani-cli
        bat
        beekeeper-studio
        borgbackup
        brightnessctl
        btop
        dunst
        eza
        fd
        ffmpeg
        ffmpegthumbnailer
        fzf
        httpie
        imagemagick
        kitty
        lazydocker
        lazygit
        lf
        mpv
        neovim
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
        zoxide

        ## GUI Apps
        flowtime
        gimp
        libreoffice
        pavucontrol
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
      ]
      ++ [ config.nur.repos.nltch.spotify-adblock ];
  };
}
