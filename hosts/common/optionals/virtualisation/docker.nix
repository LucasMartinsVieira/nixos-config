_: {
  virtualisation.docker = {
    enable = true;
  };

  networking = {
    enable = true;
    trustedInterfaces = [ "docker0" ];
  };
}
