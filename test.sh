#!/bin/bash

test_bash () {
	shellcheck "init.sh"
	shellcheck "bash/.bash/aliases"
	shellcheck "bash/.bash/profile" -e 1090,2148
	shellcheck "bash/.bashrc" -e 1090,1091,2148,2015
	shellcheck "bash/.bash/prompt"
}

test_broken_links () {
	find ~ -xtype l
}

test_bash
test_broken_links

#for f in bash/.bash/*
#do
#	shellcheck "$f"
#done
