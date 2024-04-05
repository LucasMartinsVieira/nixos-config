{...}: {
  # Enable networking to printer
  services.avahi = {
    enable = false;
    nssmdns4 = true;
    openFirewall = true;
  };
}
