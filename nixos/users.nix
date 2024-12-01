{ pkgs, ... }:
{
  users = {
    defaultUserShell = pkgs.fish;
    users = {
      lucas = {
        isNormalUser = true;
        extraGroups = [
          "wheel"
          "networkmanager"
          "libvirtd"
          "syncthing"
          "docker"
          "input"
          "uinput" # Kanata
        ];
      };
    };
  };
}
