{...}: let
  user = "lucas";
in {
  services.syncthing = {
    enable = true;
    user = user;
    dataDir = "/home/${user}/Documents/obsidian";
    configDir = "/home/${user}/Documents/obsidian/.config/syncthing";
  };
}
