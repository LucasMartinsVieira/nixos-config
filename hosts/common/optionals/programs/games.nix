{ pkgs, ... }:
{
  programs.steam = {
    enable = true;
    package = pkgs.stable.steam;
  };

  programs.gamemode = {
    enable = true;
  };

  environment.systemPackages = with pkgs; [
    mangohud
    protonup
    stable.pcsx2
    (stable.retroarch.override {
      cores = with stable.libretro; [
        # Nintendo
        nestopia # NES
        snes9x # SNES
        citra # 3DS
        dolphin # Wii

        # Playstation
        pcsx2
      ];
    })
  ];
}
