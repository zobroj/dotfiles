#!/bin/bash

#### Navigation ####

nav_report() {
	printf "DIRSTACK: \\n"
	dirs -v
}

nav_back() {
		dirs -c
		cd || exit
}

nav_list () { tree -d -L 1 --noreport; }

nav_enter()
{
	if [ $# -eq 0 ]; then
		echo "Name required"
		nav_list
	fi

	if [ -d "$1" ] ; then
		builtin pushd "$1" > /dev/null || exit
		nav_report
		nav_list
	else
		echo "Cannot find '$1'"
	fi
}

nav_pushd_builtin()
{
	builtin pushd > /dev/null || exit
	nav_report
	nav_list
}

nav_popd()
{
	builtin popd > /dev/null || exit
	nav_report
	nav_list
}

alias enter='nav_enter'
alias back='nav_popd'
alias flip='nav_pushd_builtin'

#### Application ###

vicd()
{
	#shellcheck disable=2155
	local dst="$(command vifm --choose-dir - "$@")"
	if [ -z "$dst" ]; then
		echo 'Directory picking cancelled/failed'
		return 1
	fi
	cd "$dst" || return
}

alias vifm='vicd'

# File Handling
# Copy with Rsync
alias cpr='rsync -ah --info=progress2' # new alias who dis DELOK


# Trashcan
alias tcn="mv --force -t ~/.local/share/Trash"


#### File Inspection ####

alias diff='diff --color'

# Grep
alias grep='grep --color'
alias gh='history|grep'		# quick history search

# List
alias l="ls -F --color"
alias la="ls -AF --color"
alias ll="ls -lhF --color"
alias lla="ls -lAhF --color"
alias ls="ls -hF --color"

# -r for color
alias less="less -R"

# -C for piping color
alias tree='tree -C'

#### Security ####
# SSH
alias ssh-keygen='ssh-keygen -t ed25519 -a 100'

