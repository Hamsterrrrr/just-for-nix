{ config, pkgs, ... }:

{
  fileSystems."/data" = {
    device = "/dev/sda1";
    fsType = "ext4";
    options = [ "defaults" ];
  };
}
