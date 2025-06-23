{ config, pkgs, ... }:

{
   #virtualbox config   
   users.extraGroups.vboxusers.members = [ "raihan" ];

   #host config
   virtualisation.virtualbox.host = {
   	enable = true;
        enableExtensionPack = true;
	addNetworkInterface = true;
   };
   #guestconfig
   virtualisation.virtualbox.guest = {
   	enable = true;
   	dragAndDrop = true;
	clipboard = true;
	seamless = true;
   };
}
