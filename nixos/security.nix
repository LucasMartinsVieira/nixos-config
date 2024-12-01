_: {
  security = {
    polkit.enable = true;
    sudo.enable = false;
    rtkit.enable = true;
    doas = {
      enable = true;
      extraRules = [
        {
          users = [ "lucas" ];
          groups = [ "wheel" ];
          keepEnv = true;
          persist = true;
        }
      ];
    };
  };
}
