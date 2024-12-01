{ pkgs, ... }:
{
  programs.steam = {
    enable = true;
    # package = pkgs.stable.steam;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
    gamescopeSession.enable = true;
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
