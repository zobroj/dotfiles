#!/bin/bash

if ! tmux has-session -t yancy; then
	tmux new -s yancy -d
	tmux new-window -t yancy:2
	tmux split-window -t yancy:2 -v
	tmux send-keys -t yancy:1 nvim Enter
	tmux send-keys -t yancy:2.0 \
		'man tmux' Enter
	tmux send-keys -t yancy:2.1 \
		'man nvim' Enter
	tmux new-window -t yancy:3 \
		vifm Enter
	tmux split-window -t yancy:3 \
		echo "Hello, World!" Enter
fi

tmux attach -t yancy

