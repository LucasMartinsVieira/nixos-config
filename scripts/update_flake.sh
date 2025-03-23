#!/usr/bin/env bash

doas rm -rf ~/.cache/nix && cd ~/repos/nixos-config && nix flake update && doas rm -rf ~/.cache/nix/
