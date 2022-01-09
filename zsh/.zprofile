if [[ `uname` == "Darwin" ]] then
    eval "$(/opt/homebrew/bin/brew shellenv)"
    export PATH=$PATH:/opt/homebrew/opt/llvm/bin
elif [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	exec startx
fi
