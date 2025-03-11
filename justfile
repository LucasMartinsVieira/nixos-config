HOSTNAME := `hostname`

default:
  @just --list

rebuild:
  just rebuild-pre
  bash scripts/rebuild_flake.sh

rebuild-pre:
  git add *.nix

update:
  bash scripts/update_flake.sh

update-rebuild: 
  just update 
  just rebuild

lint:
  statix check .

sops:
  sops secrets/secrets.yaml
