{pkgs, ...}: {
  users = {
    defaultUserShell = pkgs.zsh;
    users = {
      lucas = {
        isNormalUser = true;
        extraGroups = ["wheel" "networkmanager" "libvirtd" "syncthing" "docker"];
      };
    };
  };
}
