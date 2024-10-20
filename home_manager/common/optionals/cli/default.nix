{ pkgs, ... }:
{
  # imports = [
  #
  # ];

  home.packages = with pkgs; [
    ani-cli
    bat
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
    lazydocker
    lazygit
    lf
    mpv
    # neovim
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
