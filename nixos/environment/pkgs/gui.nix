{ pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Browsers
    librewolf
    inputs.zen-browser.packages."${system}".default
    brave
    tor-browser
    tor

    # Terminals
    kitty
    ghostty

    # GUI
    foliate
    gimp
    gnome-clocks
    libreoffice
    localsend
    mangayomi
    pavucontrol
    thunderbird
    transmission_4-gtk
    virt-manager
    zathura
  ];
}
