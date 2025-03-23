{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Bat
    bat
    bat-extras.batman
    bat-extras.batwatch
    bat-extras.batdiff

    # CLI
    ani-cli
    borgbackup
    brightnessctl
    btop
    docker-compose
    dunst
    eza
    fd
    feh
    ffmpeg
    ffmpegthumbnailer
    fzf
    imagemagick
    lazydocker
    lazygit
    lf
    maim
    mpv
    p7zip
    playerctl
    poppler
    redshift
    ripgrep
    rofi-wayland
    sesh
    starship
    sxiv
    tlrc
    tokei
    yazi
    yt-dlp
    # zapnote
    # inputs.zapnote.packages.${system}.default
    zoxide

  ];
}
