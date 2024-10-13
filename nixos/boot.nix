{ pkgs, ... }:
{
  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
    kernelModules = [ "amdgpu" ];
    initrd = {
      # luks.devices."luks-8ff284ea-f99c-4e60-a7eb-608427b597f2".device = "/dev/disk/by-uuid/8ff284ea-f99c-4e60-a7eb-608427b597f2";
      kernelModules = [ "amdgpu" ];
    };
    loader = {
      systemd-boot.enable = true;
      timeout = 0;
      efi.canTouchEfiVariables = true;
    };
  };
}
