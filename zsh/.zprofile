if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	exec startx
fi
eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH=$PATH:/opt/homebrew/opt/llvm/bin
