{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    ## Core
    bc
    clang
    cryptsetup
    exfat
    gcc
    git
    glibc
    gnumake
    killall
    libnotify
    lld
    llvmPackages.bintools
    lm_sensors
    openssl
    pkg-config
    unzip
    wget
    zip

    ## Vulkan
    mesa
    vulkan-loader
    vulkan-tools
    vulkan-validation-layers
  ];
}
