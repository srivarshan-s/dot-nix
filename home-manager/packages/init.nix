{ config, pkgs, ... }:

{

	imports = [
		./tmux.nix
		./alacritty.nix
		./neovim.nix
		./vscode.nix
	];

	home.packages = with pkgs; [
		
		# Applications
		brave

		# System utils
		htop
		pciutils
		xclip

		# Services
		joycond

		# Desktop customization
		papirus-icon-theme

		# Install fonts
		(nerdfonts.override { fonts = [ "FiraCode" ]; })

	];

	# Fonts
	fonts.fontconfig.enable = true;

	# Services
	# services.joycond.enable = true;

}
