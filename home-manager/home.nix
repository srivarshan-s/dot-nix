{ config, pkgs, ... }:

{

	home.username = "sri";
	home.homeDirectory = "/home/sri";

	home.stateVersion = "22.11";

	imports = [
		./packages/init.nix
	];

	home.packages = [
	];

	home.file = {
	};

	home.sessionVariables = {
		# EDITOR = "emacs";
	};

	# Let Home Manager install and manage itself.
	programs.home-manager.enable = true;

	xdg.configFile."nixpkgs/config.nix".text = ''
{
	allowUnfree = true;
}
	'';

	xdg.configFile."nix/nix.conf".text = ''
experimental-features = nix-command flakes
	'';

}
