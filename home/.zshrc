# *************************************
# Alias
# *************************************
alias ls='ls -G'
alias ll='ls -hl'
alias la='ll -a'

# *************************************
# Homebrew
# *************************************
# powerlevel10k (See: https://github.com/romkatv/powerlevel10k#homebrew)
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
if [[ -r $(brew --prefix powerlevel10k)/powerlevel10k.zsh-theme ]]; then
  source $(brew --prefix powerlevel10k)/powerlevel10k.zsh-theme
fi
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# zsh-syntax-highlighting (See: https://github.com/zsh-users/zsh-syntax-highlighting)
if [ -f $(brew --prefix zsh-syntax-highlighting)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source $(brew --prefix zsh-syntax-highlighting)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# zsh-history-substring-search (See: https://github.com/zsh-users/zsh-history-substring-search)
if [ -f $(brew --prefix zsh-history-substring-search)/share/zsh-history-substring-search/zsh-history-substring-search.zsh ]; then
  source $(brew --prefix zsh-history-substring-search)/share/zsh-history-substring-search/zsh-history-substring-search.zsh
fi

# zsh-autosuggestions (See: https://github.com/zsh-users/zsh-autosuggestions)
if [ -f $(brew --prefix zsh-autosuggestions)/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
  source $(brew --prefix zsh-autosuggestions)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# for zsh-completion
if [ -d $(brew --prefix zsh-completions)/share/zsh-completions ]; then
  fpath=($(brew --prefix zsh-completions)/share/zsh-completions $fpath)
  autoload -U compinit
  compinit -u
fi

# for User-Specific completion
if [ -d ~/.zsh/completions ]; then
  fpath=(~/.zsh/completions $fpath)
fi

# for Google Cloud Platform SDK completion
if [ -d /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk ]; then
  source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
  source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
fi
