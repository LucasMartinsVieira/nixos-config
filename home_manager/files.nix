{ config, ... }: {
  home.file = {
    # Shortcuts 
    "${config.home.homeDirectory}/media".source = config.lib.file.mkOutOfStoreSymlink "/run/media/${config.home.username}";

    # Dotfiles
    "${config.xdg.configHome}/alacritty".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/alacritty";
    "${config.xdg.configHome}/awesome".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/awesome";
    "${config.xdg.configHome}/btop".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/btop";
    "${config.xdg.configHome}/dunst".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/dunst";
    "${config.xdg.configHome}/eww".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/eww";
    "${config.xdg.configHome}/fish".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/fish";
    "${config.xdg.configHome}/hypr".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/hypr";
    "${config.xdg.configHome}/kitty".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/kitty";
    "${config.xdg.configHome}/lf".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/lf";
    "${config.xdg.configHome}/nvim".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/nvim";
    "${config.xdg.configHome}/picom".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/picom";
    "${config.xdg.configHome}/river".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/river";
    "${config.xdg.configHome}/rofi".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/rofi";
    "${config.xdg.configHome}/starship.toml".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/starship.toml";
    "${config.xdg.configHome}/waybar".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/waybar";
    "${config.xdg.configHome}/wlogout".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/wlogout";
    "${config.xdg.configHome}/zathura".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/dotfiles/cfg/zathura";

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
     };
}
