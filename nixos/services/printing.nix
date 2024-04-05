{pkgs, ...}: {
  services.printing = {
    enable = false;
    drivers = with pkgs; [epson-escpr];
    browsing = true;
    defaultShared = true;
  };
}
