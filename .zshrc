unsetopt BEEP
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

zstyle ':omz:update' frequency 13

plugins=(
    git
    tmux
    zsh-autosuggestions
)
autoload -Uz compinit
compinit
source $ZSH/oh-my-zsh.sh

# User configuration
for dir in ~/.local/opt/*; do
    if [ -d "$dir" ]; then
        export PATH="$dir:$PATH"
    fi
done

if [ -f ".zsh_aliases" ]; then source "$HOME/.zsh_aliases"; fi

parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/git:\1/p'
}


PROMPT="%F{cyan}%n%f:%F{magenta}%~%f
%F{green}$%f "
RPROMPT=$'%{\e[1A%}%F{red}$(parse_git_branch)%f%{\e[1B%}'


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if [ -f '/home/mrust/yandex-cloud/completion.zsh.inc' ]; then source '/home/mrust/yandex-cloud/completion.zsh.inc'; fi

[ -f "/home/mrust/.ghcup/env" ] && . "/home/mrust/.ghcup/env" # ghcup-env

bindkey -e
