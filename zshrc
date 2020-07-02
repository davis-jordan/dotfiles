export ZSH="/Users/jordandavis/.oh-my-zsh"
export EDITOR='nvim'
# Basic Settings
# ==============
ZSH_THEME="gallifrey"
setopt no_beep # zsh will not beep
HIST_STAMPS="yyyy-mm-dd"

plugins=(
git
vi-mode
zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# vi-mode Settings
#==================
bindkey -v
export KEYTIMEOUT=1

# Add Insert and Command Mode in RPROMPT
# --------------------------------------
vim_ins_mode="%{$fg[cyan]%}[INSERT]%{$reset_color%}"
vim_cmd_mode="%{$fg[magenta]%}[COMMAND]%{$reset_color%}"
vim_mode=$vim_ins_mode

function zle-keymap-select {
  vim_mode="${${KEYMAP/vicmd/${vim_cmd_mode}}/(main|viins)/${vim_ins_mode}}"
  zle reset-prompt
}
zle -N zle-keymap-select

function zle-line-finish {
  vim_mode=$vim_ins_mode
}
zle -N zle-line-finish

function TRAPINT() {
  vim_mode=$vim_ins_mode
  return $(( 128 + $1 ))
} 
RPROMPT='${vim_mode}'


# Bind alt-j to esc for vi-mode
# -----------------------------
bindkey -M viins 'jk' vi-cmd-mode
bindkey -M viins 'kj' vi-cmd-mode

# Set Key Timout to be longer than default for jk/kj to work
export KEYTIMEOUT=10

# Path Exports
# ============
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm" # Loads nvm bash_completion
export ANDROID_HOME=/Users/jordandavis/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$JAVA_HOME/bin
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH" # Override BSD sed with GNU sed

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
