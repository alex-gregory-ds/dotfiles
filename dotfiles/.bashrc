set -o emacs  # Enable Emacs keybindings

bind '"\C-p": history-search-backward'  # Search backward in history with CTRL + p
bind '"\C-n": history-search-forward'   # Search forward in history with CTRL + n

alias ls='ls --color'             # Always enable colors for ls
alias grep='grep --color=always'  # Always enable colors for grep

function parse_current_git_branch() {
    local CURRENT_BRANCH
    CURRENT_BRANCH="$(git branch --show-current --quiet 2> /dev/null)"
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

PS1='\n\[\e[32m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\]:\[\e[36m\]\w\[\e[m\]$(parse_current_git_branch)\n$ '

alias pdb='PYTHONBREAKPOINT=pdb.set_trace'
alias pdc='PYTHONBREAKPOINT=pdbcolor.set_trace'

export EDITOR=nvim
. "$HOME/.cargo/env"
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"

export PATH="$HOME/.local/bin:$PATH"
