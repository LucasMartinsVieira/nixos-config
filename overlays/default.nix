# This file defines overlays
{inputs, ...}: {
  # This one brings our custom packages from the 'pkgs' directory
  additions = final: _prev: import ../pkgs {pkgs = final;};

  # This one contains whatever you want to overlay
  # You can change versions, add patches, set compilation flags, anything really.
  # https://nixos.wiki/wiki/Overlays
  modifications = final: prev: {
    # example = prev.example.overrideAttrs (oldAttrs: rec {
    # ...
    # });
    discord = prev.discord.overrideAttrs (_: {
      src = builtins.fetchTarball {
        url = "https://discord.com/api/download?platform=linux&format=tar.gz";
        sha256 = "151iklw4gb2y3drnp7k8rzrx3c329cpmzd9jhhdxvnwgj0w7j5pv";
      };
    });
    awesome = inputs.nixpkgs-f2k.packages.${final.system}.awesome-luajit-git;
    # river = inputs.nixpkgs-f2k.packages.${final.system}.river-git;
  };

  # When applied, the unstable nixpkgs set (declared in the flake inputs) will
  # be accessible through 'pkgs.unstable'
  stable-packages = final: _prev: {
    stable = import inputs.nixpkgs-stable {
      system = final.system;
      config.allowUnfree = true;
    };
  };
}
