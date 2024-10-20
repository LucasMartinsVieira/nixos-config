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
      ]
      ++ [ config.nur.repos.nltch.spotify-adblock ];
    variables = {
      FZF_DEFAULT_COMMAND = "fd --hidden --strip-cwd-prefix --exclude .git";
      FZF_CTRL_T_COMMAND = "fd --hidden --strip-cwd-prefix --exclude .git";
      FZF_ALT_C_COMMAND = "fd --type=d --hidden --strip-cwd-prefix --exclude .git";

      STEAM_EXTRA_COMPAT_TOOLS_PATH = "~/.steam/root/compatibilitytools.d";

      LIBSEAT_BACKEND = "logind";

      WLR_NO_HARDWARE_CURSORS = "1";
      # WLR_RENDERER = "vulkan";

      NIXOS_OZONE_WL = "1";

      QT_QPA_PLATFORM = "wayland;xcb";

      KITTY_ENABLE_WAYLAND = "1";

      EDITOR = "nvim";
      VISUAL = "nvim";
    };
  };
}
