# ~/.bashrc
dirpath=$(dirname ${BASH_SOURCE[0]})

for file in $dirpath/.bash/*.bashrc;
do
source "$file"
done

export GREP_OPTIONS='--color=auto'

# append to the history file, don't overwrite it
shopt -s histappend

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=20000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

