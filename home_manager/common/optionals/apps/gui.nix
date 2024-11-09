{ pkgs, ... }:
{
  home.packages = with pkgs; [
    flowtime
    foliate
    gimp
    libreoffice
    localsend
    pavucontrol
    thunderbird
    transmission_4-gtk
    virt-manager
    warpinator
    zathura
  ];
}
