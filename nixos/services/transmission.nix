{pkgs, ...}: {
  services.transmission = {
    enable = false;
    package = pkgs.transmission-gtk;
  };
}
