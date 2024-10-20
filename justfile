default:
  @just --list

rebuild HOST:
  just rebuild-pre
  doas nixos-rebuild switch --flake ".#{{HOST}}"

rebuild-pre:
  git add *

update:
  nix flake update

rebuild-update HOST: 
  just update 
  just rebuild

lint:
  statix check .

sops:
  sops secrets/secrets.yaml
