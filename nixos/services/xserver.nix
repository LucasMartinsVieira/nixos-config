{ pkgs, ... }:
{
  services.xserver = {
    enable = true;
    xkb = {
      layout = "us,br";
      variant = "intl,";
      options = "grp:shifts_toggle,lv3:ratl_switch,ctrl:nocaps";
    };
    excludePackages = with pkgs; [ xterm ];
    videoDrivers = [ "amdgpu" ];
    displayManager.startx.enable = true;
    windowManager.awesome.enable = true;
  };

  environment.systemPackages = with pkgs; [
    feh
    maim
    redshift
    sxiv
  ];

  # services.desktopManager.cosmic.enable = false;
  # services.displayManager.cosmic-greeter.enable = false;
}
