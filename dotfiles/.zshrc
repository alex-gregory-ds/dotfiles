HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep  # Turn of all beeping
bindkey -e     # Enable Emacs key bindings

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/alex/.zshrc'

autoload -Uz compinit
compinit

# Case insensitive completion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

alias ls='ls --color'             # Always enable colors for ls
alias grep='grep --color=always'  # Always enable colors for grep

# Search history for commands beginning with text provided. CTRL+P
# goes back in history and CTRL+N goes forward in history
bindkey "^P" history-beginning-search-backward
bindkey "^N" history-beginning-search-forward

function parse_current_git_branch() {
    CURRENT_BRANCH="$(git --no-pager branch --show-current --quiet 2> /dev/null)"
    if [ $? = 0 ]; then
        echo "(${CURRENT_BRANCH}) "
    fi
}

function vm() {
    if [ ! -d "${HOME}/mytrash" ]; then
        echo "${HOME}/mytrash folder does not exits."
    else
        mv --verbose --interactive --no-clobber --target-directory="${HOME}/mytrash" "$@" 
    fi
}

setopt PROMPT_SUBST
PROMPT='%F{green}%n@%m%f:%F{cyan}%1~%f $(parse_current_git_branch)%F{green}$ %f'

