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

  networking.firewall = {
    enable = true;
    allowedTCPPorts = [
      8384 # Syncthing
      22000 # Syncthing
    ];
    allowedUDPPorts = [
      22000 # Syncthing
      21027 # Syncthing
    ];
  };
}
