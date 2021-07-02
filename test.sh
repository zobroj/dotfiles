#!/bin/bash

shellcheck "init.sh"
shellcheck "bash/.bash_aliases"
shellcheck "bash/.bash_profile" -e 1090
shellcheck "bash/.bashrc" -e 1090,1091,2148,2015 
