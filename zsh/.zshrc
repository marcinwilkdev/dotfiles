export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="simple"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

alias ls="exa"
alias find="fd"
alias grep="rg"
alias cat="bat"
alias diff="delta"
alias du="dust"

alias ga="git add"
alias gap="ga -p"
alias gb="git branch"
alias gc="git commit"
alias gd="git diff"
alias gds="gd --staged"
alias gl="git log"
alias glo="gl --oneline"
alias go="git checkout"
alias gpo="git push origin"
alias gr="git restore"
alias grs="gr --staged"
alias gs="git status"
alias gsu="git submodule update"
alias gsur="gsu --recursive"
alias gbs="go \`gb | fzf\`"

alias cdhq="cd ~/dev/renode-hq"
alias cdrenode="cd ~/dev/renode-hq/src/renode"
alias cdinfra="cd ~/dev/renode-hq/src/renode/src/Infrastructure"
alias cdtlib="cd ~/dev/renode-hq/src/renode/src/Infrastructure/src/Emulator/Cores/tlib"

alias readelf="readelf -W"
alias gdb_tlib="gdb -p `ps aux | grep Renode.dll | grep -v rg | awk '{ print $2 }'` -ex 'handle SIGXCPU SIG33 SIG34 SIG35 SIG36 SIG37 SIGPWR nostop noprint'"
alias zynqmp_docs="google-chrome ~/dev/docs/zynqmp/*.pdf"

ff () {
  $1 `fzf`
}

export PATH=~/.local/bin:~/.local/share/bob/nvim-bin:~/.local/bin:$PATH
export NVM_DIR="$HOME/.nvm"
export PYTHONPATH=/usr/lib/llvm-14/lib/python3.10/dist-packages # fix for lldb

source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
