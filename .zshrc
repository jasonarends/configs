[[ -t 1 ]] && clear > /dev/null


# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# After the prompt is fully ready, run these:
autoload -Uz add-zsh-hook

# Auto-attach to tmux *only once per SSH login shell*
if [[ -t 1 && -z "$TMUX"  ]]; then
  if tmux has-session -t main 2>/dev/null; then
    tmux attach -t main
  else
    tmux new-session -s main
  fi
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jason/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
alias ls='ls --color=auto'
alias ll='ls -lh --color=auto --group-directories-first'
alias la='ls -lAh --color=auto --group-directories-first'
alias grep='grep --color=auto'

# PATH=~/.local/bin:$PATH

export PAGER='most'

unset CONDA_DEFAULT_ENV
# To customize prompt, run `p10k configure` or edit ~/configs/.p10k.zsh.
[[ ! -f ~/configs/.p10k.zsh ]] || source ~/configs/.p10k.zsh

fpath+=${ZDOTDIR:-~}/.zsh_functions
