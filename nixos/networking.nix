{ ... }:
{
  networking = {
    hostName = "nixos";
    networkmanager.enable = true;

    firewall = {
      allowedTCPPorts = [
        22 # SSH
        80 # HTTP
        443 # HTTPS

        42000 # Warpinator
        42001 # Warpinator

        8384 # Syncthing
        22000 # Syncthing
      ];
      allowedUDPPorts = [
        42000 # Warpinator
        42001 # Warpinator

        22000 # Syncthing
        21027 # Syncthing
      ];
      trustedInterfaces = [ "docker0" ];
      enable = true;
    };
  };
}
