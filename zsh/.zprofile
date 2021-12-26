if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	exec startx
fi
<<<<<<< HEAD
# eval "$(/opt/homebrew/bin/brew shellenv)"
||||||| 93314e9
eval "$(/opt/homebrew/bin/brew shellenv)"
=======
eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH=$PATH:/opt/homebrew/opt/llvm/bin
>>>>>>> 72eca8a81326dd3f3b80b179fe42ffca2f239e81
