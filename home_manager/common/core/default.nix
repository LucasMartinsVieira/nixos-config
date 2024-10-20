{ ... }:
{
  imports = [
    ./files.nix
    ./fonts.nix
    ./gtk.nix
    ./kitty.nix
    ./nixpkgs.nix
    ./nvim.nix
  ];

  home = {
    username = "lucas";
    homeDirectory = "/home/lucas";
  };

  # Dconf
  dconf.settings = {
    "org/virt-manager/virt-manager/connections" = {
      autoconnect = [ "qemu:///system" ];
      uris = [ "qemu:///system" ];
    };
  };

  # Enable home-manager
  programs.home-manager.enable = true;

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";
}
