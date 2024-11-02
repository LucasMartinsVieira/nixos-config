HOSTNAME := `hostname`

default:
  @just --list

rebuild:
  just rebuild-pre
  doas nixos-rebuild switch --flake ".#{{HOSTNAME}}"

rebuild-pre:
  git add *.nix

update:
  nix flake update

rebuild-update: 
  just update 
  just rebuild

lint:
  statix check .

sops:
  sops secrets/secrets.yaml
