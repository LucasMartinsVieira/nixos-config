#!/usr/bin/env bash

doas rm -rf ~/.cache/nix && cd ~/repos/nixos-config && doas nixos-rebuild switch --flake ~/repos/nixos-config && doas rm -rf ~/.cache/nix/
