{ pkgs, ... }: {
  services.xserver = {
    enable = true;
    layout = "us";
    excludePackages = with pkgs; [ xterm ];
    videoDrivers = [ "amdgpu" ];
    displayManager.startx.enable = true;
    windowManager.awesome.enable = true;
  };
}
