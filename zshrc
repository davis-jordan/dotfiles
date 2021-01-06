export ZSH="/Users/jordandavis/.oh-my-zsh"
export EDITOR='nvim'

# Basic Settings
# ==============
ZSH_THEME="gallifrey"
setopt no_beep # zsh will not beep
HIST_STAMPS="yyyy-mm-dd"

plugins=(
git
zsh-syntax-highlighting
zsh-vim-mode
)

source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# vi-mode Settings
#==================
bindkey -v
export KEYTIMEOUT=1

MODE_CURSOR_VIINS="#00ff00 blinking bar"
MODE_CURSOR_REPLACE="$MODE_CURSOR_VIINS #ff0000"
MODE_CURSOR_VICMD="green block"
MODE_CURSOR_SEARCH="#ff00ff steady underline"
MODE_CURSOR_VISUAL="$MODE_CURSOR_VICMD steady bar"
MODE_CURSOR_VLINE="$MODE_CURSOR_VISUAL #00ffff"

# my-script_widget() LBUFFER+=$(zsh $HOME/Documents/Scripts/clipboard_select.sh)
my-script_widget() {
  RESULT=$(zsh $HOME/Documents/Scripts/clipboard_select.sh)
  LBUFFER+=$RESULT
}
zle -N my-script_widget
bindkey ^h my-script_widget

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
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES # Allows multithreading in python
# Python with pyenv
PATH=$(pyenv root)/shims:$PATH
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/opt/llvm/bin:$PATH"

export BAT_THEME OneHalfDark










