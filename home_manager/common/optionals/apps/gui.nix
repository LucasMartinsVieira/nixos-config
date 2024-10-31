{ pkgs, ... }:
{
  home.packages = with pkgs; [
    flowtime
    foliate
    gimp
    libreoffice
    pavucontrol
    thunderbird
    transmission_4-gtk
    virt-manager
    warpinator
    zathura
  ];
}
