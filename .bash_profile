# Ruby environment
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# PostgreSQL config
export PGHOST=localhost
export PGPORT=5432

# System editor
export EDITOR=vim

# Aliases - forman
alias fr="foreman run"
alias fs="foreman start"
alias fbe="foreman run bundle exec"

# Aliases - git
alias gs="git status"
alias gc="git checkout"
alias gb="git branch"
alias graph="git log --color --all --graph --decorate --oneline"
alias lgraph="git log --color --graph --decorate --oneline"
alias cgraph="graph --author=ctpassmore@gmail.com"

# Aliases - postgres
alias cleanupfsevents='sudo pkill -9 "fsevent*"'

# Aliases - system
alias ls="ls -G -p"
alias vimf="vim \$(fzf)"

# Aliases - http-prompt
alias hp="http-prompt"

# Aliases - docker
alias delete_docker_containers='docker rm $(docker ps -a -q)'  # Delete all containers
alias delete_docker_images='docker rmi $(docker images -q)'  # Delete all images

# No idea what this is.
export WORKSPACE_PATH="/Users/clayton/Development"

# Brew bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# Powerline
#powerline-daemon -q
#. /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh

export PATH=/usr/local/opt/postgresql@9.4/bin:/Users/clayton/.rbenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/clayton/.vimpkg/bin

# Fortune + CowSay
# fortune | cowsay | lolcat

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# eval $(thefuck --alias)

. /usr/local/etc/profile.d/z.sh

# Easy search and open
alias vimf="vim \$(fzf)"

# Respect gitignore with fzf
export FZF_DEFAULT_COMMAND='fd --type f'
