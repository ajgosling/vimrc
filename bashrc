export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden --follow --glob "!.git/*"'

export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --bind J:down,K:up'

export EDITOR=vim # vim as default editor

alias q=exit
alias :q=exit
alias c=clear
alias o=open
alias h=history
alias cs='clear;ls'
alias p=cat
alias pd=pwd
alias sl=ls
alias lsa='ls -a'
alias lsl='ls -l'
alias t=time
alias k=kill
alias g=git

alias home='cd ~'
alias root='cd /'
alias dtop='cd ~/Desktop'

# Shortcuts to vimrc and bashrc
alias vimrc='vim ~/.vim/vimrc'
alias zshrc='vim ~/.zshrc'
