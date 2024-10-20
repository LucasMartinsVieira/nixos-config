_:
let
  user = "lucas";
in
{
  services.syncthing = {
    enable = true;
    inherit user;
    dataDir = "/home/${user}/Documents/obsidian";
    configDir = "/home/${user}/Documents/obsidian/.config/syncthing";
  };
}
