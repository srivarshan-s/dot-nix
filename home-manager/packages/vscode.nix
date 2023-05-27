{ config, pkgs, ... }:

{

	programs.vscode = {
		enable = true;
		extensions = with pkgs.vscode-extensions; [

			# Python
			ms-python.python
			ms-python.vscode-pylance

			# Jupyter notebooks
			ms-toolsai.jupyter
			ms-toolsai.vscode-jupyter-slideshow
			ms-toolsai.vscode-jupyter-cell-tags
			ms-toolsai.jupyter-renderers
			ms-toolsai.jupyter-keymap

			# C/C++
			ms-vscode.cpptools

			# Rust
			matklad.rust-analyzer

			# Go
			golang.go

			# Nix
			bbenoist.nix
		];
		userSettings = {
			"window.titleBarStyle" = "custom";
			"files.autoSave" = "afterDelay";
			"terminal.integrated.fontFamily" = "FiraCode Nerd Font Mono";
		};
	};

}
