{ pkgs, ... }:
{
  home.packages = with pkgs; [
    gradle
    maven
    jdk
    jdt-language-server
    jetbrains.idea-community
    kotlin
  ];
}
