default:
  @just --list

rebuild: rebuild-pre
  doas nixos-rebuild switch --flake .#

rebuild-pre:
  git add *

update:
  nix flake update

rebuild-update: update && rebuild

lint:
  statix check .

sops:
  sops secrets/secrets.yaml
