# Alias
alias ls='ls -G'
alias ll='ls -hl'
alias la='ll -a'


# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

if [[ -r /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme ]]; then
  source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/t2nabi/.sdkman"
[[ -s "/Users/t2nabi/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/t2nabi/.sdkman/bin/sdkman-init.sh"
source /Users/t2nabi/Documents/git/github.com/t2nagi/dotfiles/home/.zshrc
