set -o emacs  # Enable Emacs keybindings

bind '"\C-p": history-search-backward'  # Search backward in history with CTRL + p
bind '"\C-n": history-search-forward'   # Search forward in history with CTRL + n

alias ls='ls --color'             # Always enable colors for ls
alias grep='grep --color=always'  # Always enable colors for grep

function parse_current_git_branch() {
    CURRENT_BRANCH="$(git --no-pager branch --show-current --quiet 2> /dev/null)"
    if [ $? = 0 ]; then
        echo "(${CURRENT_BRANCH})"
    fi
}

function vm() {
    if [ ! -d "${HOME}/mytrash" ]; then
        echo "${HOME}/mytrash folder does not exits."
    else
        mv --verbose --interactive --no-clobber --target-directory="${HOME}/mytrash" "$@" 
    fi
}

PS1='\e[0;32m\u@\H\e[0m:\e[0;36m\w\e[0m$(parse_current_git_branch)$ '

