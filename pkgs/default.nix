# Custom packages, that can be defined similarly to ones from nixpkgs
# You can build them using 'nix build .#example' or (legacy) 'nix-build -A example'
{
  pkgs ? (import ../nixpkgs.nix) { },
}:
{
  # example = pkgs.callPackage ./example { };
  zapnote = pkgs.callPackage ./zapnote { };
  spotify-adblock = pkgs.callPackage ./spotify-adblock { };
  mangayomi-custom = pkgs.callPackage ./mangayomi-custom { };
}
