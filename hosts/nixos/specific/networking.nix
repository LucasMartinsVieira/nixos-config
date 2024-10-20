_: {
  networking = {
    hostName = "nixos";
    networkmanager.enable = true;

    firewall = {
      allowedTCPPorts = [
        80 # HTTP
        443 # HTTPS

        42000 # Warpinator
        42001 # Warpinator
      ];
      allowedUDPPorts = [
        42000 # Warpinator
        42001 # Warpinator
      ];
      trustedInterfaces = [ "docker0" ];
      enable = true;
    };
  };
}
