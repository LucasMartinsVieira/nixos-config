# This file defines overlays
{ inputs, lib, ... }:
{
  # This one brings our custom packages from the 'pkgs' directory
  additions = final: _prev: import ../pkgs { pkgs = final; };

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
        sha256 = "0njwcnrn2br47dzqvmlazcmf63bblx68775f0kv8djwxfvg977im";
      };
    });

    ristate = prev.ristate.overrideAttrs (oldAttrs: rec {
      version = "master";

      src = prev.fetchFromGitLab {
        owner = "snakedye";
        repo = "ristate";
        rev = "92e989f26cadac69af1208163733e73b4cf447da";
        hash = "sha256-6slH7R6kbSXQBd7q38oBEbngaCbFv0Tyq34VB1PAfhM";
      };

      cargoDeps = oldAttrs.cargoDeps.overrideAttrs (
        lib.const {
          inherit src;
          outputHash = "sha256-fOo9C0dNL9dYy5wXq/yEDqOV0OhOTEY42XK8ShpQh6k=";
        }
      );
    });

    awesome = inputs.nixpkgs-f2k.packages.${final.system}.awesome-luajit-git;
    # river = inputs.nixpkgs-f2k.packages.${final.system}.river-git;
  };

  # When applied, the unstable nixpkgs set (declared in the flake inputs) will
  # be accessible through 'pkgs.unstable'
  stable-packages = final: _prev: {
    stable = import inputs.nixpkgs-stable {
      inherit (final) system;
      config.allowUnfree = true;
    };
  };

  cliphist-pin = final: prev: {
    cliphist-pin = import inputs.nixpkgs-cliphist-pin {
      inherit (final) system;
      config.allowUnfree = true;
    };
  };
}
