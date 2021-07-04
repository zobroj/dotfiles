#!/bin/bash

shellcheck "init.sh"
shellcheck "bash/.bash_aliases"
shellcheck "bash/.bash_profile" -e 1090,2148
shellcheck "bash/.bashrc" -e 1090,1091,2148,2015 
shellcheck "bash/.bash/prompt"

#for f in bash/.bash/*
#do
#	shellcheck "$f"
#done
