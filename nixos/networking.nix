{ config, lib, pkgs, ... }: {
   networking = {
      hostName = "arir";
      networkmanager.enable = true;
      firewall = {
         enable = true;
	 allowPing = false;
      };
   };
}
