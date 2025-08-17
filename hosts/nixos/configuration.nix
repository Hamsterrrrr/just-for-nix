{
  pkgs,
  stateVersion,
  hostname,
  ...
}:

{
  imports = [
    ./hardware-configuration.nix
    ./local-packages.nix
    ../../nixos/modules
  ];
  # fileSystems."/mnt/X" = {
  #device = "/dev/disk/by-label/X";
  # fsType = "ext4";
  # options = [ "default" ];
  # };

  environment.systemPackages = [ pkgs.home-manager ];

  networking.hostName = hostname;

  system.stateVersion = stateVersion;
}
