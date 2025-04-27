{
  config,
  pkgs,
  inputs,
  ...
}: {
  users.users.srajput26 = {
    initialHashedPassword = "$y$j9T$ha0hv5I4wFd2WxnOHWTfu1$D8c/HO0lnvd65ApGi2e.Tf0yu4VuQOtrjZRnzLJeD04";
    isNormalUser = true;
    description = "shwetank rajput";
    extraGroups = [
      "wheel"
      "networkmanager"
      "libvirtd"
      "flatpak"
      "audio"
      "video"
      "plugdev"
      "input"
      "kvm"
      "qemu-libvirtd"
    ];
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOEXDUT3lxIiBbD0iwwydu+57qZa/AtrMvMFz3Cj1Eds shwetankrajput26+github.hotmail.com"];
    packages = [inputs.home-manager.packages.${pkgs.system}.default];
  };
  home-manager.users.srajput26 =
    import ../../../home/srajput26/${config.networking.hostName}.nix;
}

