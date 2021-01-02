# Alias
alias ls='ls -G'
alias ll='ls -hl'
alias la='ll -a'

# powerlevel10k (See: https://github.com/romkatv/powerlevel10k#homebrew)
if [[ -r /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme ]]; then
  source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme
fi

# zsh-syntax-highlighting (See: https://github.com/zsh-users/zsh-syntax-highlighting)
if [ -f /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# zsh-history-substring-search (See: https://github.com/zsh-users/zsh-history-substring-search)
if [ -f /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh ]; then
  source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
fi

# zsh-autosuggestions (See: https://github.com/zsh-users/zsh-autosuggestions)
if [ -f /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
  source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# for zsh-completion
if [ -d /usr/local/share/zsh-completions ]; then
  fpath=(/usr/local/share/zsh-completions $fpath)
fi

# for User-Specific completion
if [ -d ~/.zsh/completions ]; then
  fpath=(~/.zsh/completions $fpath)
fi
