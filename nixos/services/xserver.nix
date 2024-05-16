{ pkgs, ... }:
{
  services.xserver = {
    enable = true;
    xkb = {
      layout = "us,br";
      variant = "intl";
      options = "grp:shifts_toggle,lv3:ratl_switch,ctrl:nocaps";
    };
    excludePackages = with pkgs; [ xterm ];
    videoDrivers = [ "amdgpu" ];
    displayManager.startx.enable = true;
    windowManager.awesome.enable = true;
  };
}
