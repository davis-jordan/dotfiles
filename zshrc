zmodload zsh/zprof

# NVM Setup
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export ZSH="${HOME}/.oh-my-zsh"
export EDITOR='nvim'

# Basic Settings
# ==============
ZSH_THEME="bira"
setopt no_beep # zsh will not beep
HIST_STAMPS="yyyy-mm-dd"
DISABLE_AUTO_UPDATE="true"
skip_global_compinit=1

source ~/dotfiles/private_aliases.zsh;

# Plugins
# =======
plugins=(
  # git
  zsh-syntax-highlighting
  zsh-vim-mode
)

### Fix slowness of pastes with zsh-syntax-highlighting.zsh
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}
pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish
### Fix slowness of pastes

source $ZSH/oh-my-zsh.sh

# Auto-suggestion
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# vi-mode Settings
#==================
# Bind jk/kj to esc for vi-mode
bindkey -M viins 'jk' vi-cmd-mode
bindkey -M viins 'kj' vi-cmd-mode

# Set Key Timout to be longer than default for jk/kj to work
export KEYTIMEOUT=10
bindkey -v

MODE_CURSOR_VIINS="#00ff00 blinking bar"
MODE_CURSOR_REPLACE="$MODE_CURSOR_VIINS #ff0000"
MODE_CURSOR_VICMD="green block"
MODE_CURSOR_SEARCH="#ff00ff steady underline"
MODE_CURSOR_VISUAL="$MODE_CURSOR_VICMD steady bar"
MODE_CURSOR_VLINE="$MODE_CURSOR_VISUAL #00ffff"

function TRAPINT() {
  vim_mode=$vim_ins_mode
  return $(( 128 + $1 ))
} 
RPROMPT='${vim_mode}'

# FZF search for command history
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Allows multithreading in python
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES 

# Path Exports
# ============
export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/ndk/21.3.6528147
export PATH=$PATH:$JAVA_HOME/bin
export PATH=$PATH:/usr/local/bin
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH" # Override BSD sed with GNU sed
export PATH="$PATH:$HOME/Documents/Scripts"
export PATH="$PATH:$HOME/nvim/bin/"

export BAT_THEME="TwoDark"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '${HOME}/google-cloud-sdk/path.zsh.inc' ]; then . '${HOME}/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '${HOME}/google-cloud-sdk/completion.zsh.inc' ]; then . '${HOME}/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Python with pyenv
PATH=$(pyenv root)/shims:$PATH

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
