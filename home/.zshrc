# Alias
alias ls='ls -G'
alias ll='ls -hl'
alias la='ll -a'

# powerlevel10k (See: https://github.com/romkatv/powerlevel10k#homebrew)
if [[ -r /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme ]]; then
  source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme
fi

# zsh-history-substring-search (See: https://github.com/zsh-users/zsh-history-substring-search)
if [ -f /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh ]; then
  source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
fi

# zsh-autosuggestions (See: https://github.com/zsh-users/zsh-autosuggestions)
if [ -f /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
  source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi