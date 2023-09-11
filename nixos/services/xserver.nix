{ pkgs, ... }: {
  services.xserver = {
    enable = true;
    layout = "us";
    xkbVariant = "intl";
    xkbOptions = "lv3:ratl_switch,ctrl:nocaps";
    excludePackages = with pkgs; [ xterm ];
    videoDrivers = [ "amdgpu" ];
    displayManager.startx.enable = true;
    windowManager.awesome.enable = true;
  };
}
