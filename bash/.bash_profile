#!/bin/bash

# Bash specific "onStart" script

# configuration
project_name="zobro"
tools_dir="$HOME/bin/tools"
local_dir="$HOME/.local/share/$project_name"

# Display Current TODOS
TODOS_FILE="$HOME/.local/share/zobro/todo.md"
[ -f "TODOS_FILE" ] && source "$tools_dir/TODOS.sh" 
printf "%s" "$TODOS_CURRENT" | cowsay -n
echo

directory_stack ()
{
	directories=(
		"$local_dir"
		"$HOME/bin"
		"$HOME/lib"
	)

	for dir in "${directories[@]}"
	do
		[ -d "$dir" ] && pushd "$dir" > /dev/null || echo "missing $dir"
	done

	printf "Directory Stack:\\n"
	dirs -v
}

# Set Path
[ -d "$HOME/bin" ] && export PATH="$PATH:$HOME/bin"

# Display Git Status
[ -d ".git"  ] && { command git status ; echo ; }

# Display holidays
calendar -f /usr/share/calendar/calendar.usholiday -l 30 -B 30
echo 

date '+Today is %A, %B %d, %Y.'

. "$HOME/.cargo/env"
