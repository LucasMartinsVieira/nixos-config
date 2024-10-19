{ pkgs, ... }:
{
  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
    kernelModules = [ "amdgpu" ];
    initrd = {
      # luks.devices."luks-8ff284ea-f99c-4e60-a7eb-608427b597f2".device = "/dev/disk/by-uuid/8ff284ea-f99c-4e60-a7eb-608427b597f2";
      luks.devices."luks-eadfff45-7cad-48b0-a667-900574f082d5".device = "/dev/disk/by-uuid/eadfff45-7cad-48b0-a667-900574f082d5";
      kernelModules = [ "amdgpu" ];
    };
    loader = {
      systemd-boot.enable = true;
      timeout = 0;
      efi.canTouchEfiVariables = true;
    };
  };
}
