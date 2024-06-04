{ config, ... }:
{
  home.file = {
    # Shortcuts
    "${config.home.homeDirectory}/media".source = config.lib.file.mkOutOfStoreSymlink "/run/media/${config.home.username}";

    # Dotfiles
    "${config.xdg.configHome}/alacritty".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/alacritty";
    "${config.xdg.configHome}/awesome".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/awesome";
    "${config.xdg.configHome}/dunst".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/dunst";
    "${config.xdg.configHome}/eww".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/eww";
    "${config.xdg.configHome}/fish".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/fish";
    "${config.xdg.configHome}/fuzzel".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/fuzzel";
    "${config.xdg.configHome}/hypr".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/hypr";
    "${config.xdg.configHome}/ideavim".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/ideavim";
    "${config.xdg.configHome}/kitty".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/kitty";
    "${config.xdg.configHome}/lf".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/lf";
    "${config.xdg.configHome}/niri".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/niri";
    "${config.xdg.configHome}/nvim".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/nvim";
    "${config.xdg.configHome}/picom".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/picom";
    "${config.xdg.configHome}/river".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/river";
    "${config.xdg.configHome}/rofi".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/rofi";
    "${config.xdg.configHome}/tmux".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/tmux";
    "${config.xdg.configHome}/starship.toml".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/starship.toml";
    "${config.xdg.configHome}/waybar".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/waybar";
    "${config.xdg.configHome}/wlogout".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/wlogout";
    "${config.xdg.configHome}/yazi".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/yazi";
    "${config.xdg.configHome}/zathura".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/zathura";
    "${config.home.homeDirectory}/.zshrc".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/home/.zshrc";

    # Scripts
    "${config.home.homeDirectory}/.local/bin/aw".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/bin/aw";
    "${config.home.homeDirectory}/.local/bin/bookmark".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/bin/bookmark";
    "${config.home.homeDirectory}/.local/bin/borg-backup".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/bin/borg-backup";
    "${config.home.homeDirectory}/.local/bin/brightness".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/bin/brightness";
    "${config.home.homeDirectory}/.local/bin/cht".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/bin/cht";
    "${config.home.homeDirectory}/.local/bin/colorscheme".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/bin/colorscheme";
    "${config.home.homeDirectory}/.local/bin/display_select".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/bin/display_select";
    "${config.home.homeDirectory}/.local/bin/on-off".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/bin/on-off";
    "${config.home.homeDirectory}/.local/bin/sb".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/bin/sb";
    "${config.home.homeDirectory}/.local/bin/screenshot".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/bin/screenshot";
    "${config.home.homeDirectory}/.local/bin/files".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/bin/files";
    "${config.home.homeDirectory}/.local/bin/kitty-sessionizer".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/bin/kitty-sessionizer";
    "${config.home.homeDirectory}/.local/bin/tmux-sessionizer".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/bin/tmux-sessionizer";
    "${config.home.homeDirectory}/.local/bin/tmux-kill".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/bin/tmux-kill";
    "${config.home.homeDirectory}/.local/bin/tn".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/bin/tn";
    "${config.home.homeDirectory}/.local/bin/trash".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/bin/trash";
    "${config.home.homeDirectory}/.local/bin/search".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/bin/search";
    "${config.home.homeDirectory}/.local/bin/usb".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/bin/usb";
    "${config.home.homeDirectory}/.local/bin/volume".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/bin/volume";
    "${config.home.homeDirectory}/.local/bin/wallpaper".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/bin/wallpaper";
    "${config.home.homeDirectory}/.local/bin/wifi".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/bin/wifi";

    # Xorg
    "${config.home.homeDirectory}/.xinitrc".text = ''
      #!/bin/sh

      userresources=$HOME/.Xresources
      usermodmap=$HOME/.Xmodmap
      sysresources=/etc/X11/xinit/.Xresources
      sysmodmap=/etc/X11/xinit/.Xmodmap

      # merge in defaults and keymaps
      if [ -f $sysresources ]; then
        xrdb -merge $sysresources
      fi

      if [ -f $sysmodmap ]; then
          xmodmap $sysmodmap
      fi

      if [ -f "$userresources" ]; then
        xrdb -merge "$userresources"
      fi

      if [ -f "$usermodmap" ]; then
          xmodmap "$usermodmap"
      fi

      # start some nice programs

      if [ -d /etc/X11/xinit/xinitrc.d ] ; then
       for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
       done
       unset f
      fi

      exec awesome
    '';

    # Spotify-adblock
    "${config.home.homeDirectory}/.local/share/applications/spotify-adblock.desktop".text = ''
      [Desktop Entry]
      Type=Application
      Name=Spotify (adblock)
      GenericName=Music Player
      Icon=spotify-client
      TryExec=spotify
      Exec=env LD_PRELOAD=/usr/local/lib/spotify-adblock.so spotify %U
      Terminal=false
      MimeType=x-scheme-handler/spotify;
      Categories=Audio;Music;Player;AudioVideo;
      StartupWMClass=spotify
    '';

    # Obsidian (GPU Disabled)
    "${config.home.homeDirectory}/.local/share/applications/obsidian-disabled-gpu.desktop".text = ''
      [Desktop Entry]
      [Desktop Entry]
      Categories=Office
      Comment=Knowledge base
      Exec=obsidian --disable-gpu %u
      Icon=obsidian
      MimeType=x-scheme-handler/obsidian
      Name=Obsidian (GPU Disabled)
      Type=Application
      Version=1.4
    '';
  };
}
