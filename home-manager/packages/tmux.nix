{ config, pkgs, ... }:

{

	programs.tmux = {
		enable = true;
		sensibleOnTop = false;
		shortcut = "a";
		mouse = true;
		escapeTime = 0;
		baseIndex = 1;
		historyLimit = 3000;
		clock24 = true;
		keyMode = "vi";
		terminal = "xterm-256color";
		extraConfig = ''
# SWITCH PANES SING Alt-arrow WITHOUT PREFIX
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D

# SPLIT WINDOWS WITH PREFIX+h AND PREFIX+v
bind-key v split-window -h
bind-key h split-window -v

# SWITCH WINDOWS WITH ALT-NUM, WITHOUT PREFIX
bind-key -n M-1 select-window -t 1
bind-key -n M-2 select-window -t 2
bind-key -n M-3 select-window -t 3
bind-key -n M-4 select-window -t 4
bind-key -n M-5 select-window -t 5
bind-key -n M-6 select-window -t 6
bind-key -n M-7 select-window -t 7
bind-key -n M-8 select-window -t 8
bind-key -n M-9 select-window -t 9
		'';
	};

}
