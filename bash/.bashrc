# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

alias vg="valgrind --leak-check=full"
alias new="/home/marcin/.config/bash_scripts/bazel_new"
alias cnotes="nvim /home/marcin/.config/bash_scripts/cnotes"
alias crules="nvim /home/marcin/.config/bash_scripts/crules"
alias btest="/home/marcin/.config/bash_scripts/bazel_test"
alias bmain="/home/marcin/.config/bash_scripts/bazel_main"
alias bmainrelease="/home/marcin/.config/bash_scripts/bazel_main_release"
alias ls="ls -al --color=auto"

alias ga="git add"
alias gs="git status"
alias gc="git commit"
. "$HOME/.cargo/env"

alias dbg="/home/marcin/.config/bash_scripts/dbg_script"
