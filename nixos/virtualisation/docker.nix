_: {
  virtualisation.docker = {
    enable = true;
  };

  networking.firewall = {
    enable = true;
    trustedInterfaces = [ "docker0" ];
  };
}
