{pkgs, ...}: {
  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
    kernelModules = ["amdgpu"];
    initrd = {
      luks.devices."luks-ea8ebf17-05f5-4485-9ef5-d70ffa7c228e".device = "/dev/disk/by-uuid/ea8ebf17-05f5-4485-9ef5-d70ffa7c228e";
      kernelModules = ["amdgpu"];
    };
    loader = {
      systemd-boot.enable = true;
      timeout = 5;
      efi.canTouchEfiVariables = true;
    };
  };
}
