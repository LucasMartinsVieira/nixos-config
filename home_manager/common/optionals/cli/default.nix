{ pkgs, ... }:
{
  # imports = [
  #
  # ];

  home.packages = with pkgs; [
    ani-cli
    borgbackup
    brightnessctl
    btop
    docker-compose
    dunst
    eza
    fd
    ffmpeg
    ffmpegthumbnailer
    fzf
    httpie
    imagemagick
    lazydocker
    lazygit
    lf
    mpv
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
  ];
}
