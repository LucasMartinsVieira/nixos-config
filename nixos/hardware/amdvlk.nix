{ pkgs, ... }:
{
  hardware.amdgpu = {
    amdvlk = {
      enable = true;
      support32Bit.enable = true;
      package = pkgs.amdvlk;
    };
  };
}
