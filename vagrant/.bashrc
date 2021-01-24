# fzf integration
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

alias vim="nvim"
alias update="source ~/.bashrc"

export PS1="\e[0;36m\w \e[m
\e[0;32m\h\`nonzero_return\` >\e[m "

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export NVIM_CONFIG="$HOME/.config/nvim/init.vim"

# Aliases

## calculator
alias bc="bc -l"

## cd
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .1="cd .."
alias .2="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias .5="cd ../../../../.."

## ad - advance touch
alias ad="~/Library/Python/3.9/bin/ad"

## clear
alias c='clear'

## zsh
alias update="source ~/.zshrc"

## ls
alias ls='ls -l'
alias l='ls -la'
alias ll='ls -l'
alias la='ls -la'

## tre-command
alias tree="tre"

# history
alias hrg="history | rg"

# free
alias meminfo="free -m -l -t"

# ps
alias psmem="ps auxf | sort -nr -k 4"
alias ptree="ps auxf --forest"
alias pscpu="ps auxf | sort -nr -k 3s"
alias paux="ps aux | grep"

# brew
alias bi="brew install"
alias bu="brew update"
alias bug="brew upgrade"
alias bc="brew cleanup"
alias bd="brew doctor"
alias br="brew remove"

# apt
alias sau="sudo apt update"
alias sadu="sudo apt dist-upgrade"
alias sai="sudo apt install"
alias aclean="sudo apt autoremove && sudo apt autoclean"
alias as="apt search"
alias ash="apt show"

## git
alias ggraph="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gs='git status -sb'
alias gp='git pull'
alias nah="git clean -df && git checkout -- ."
alias gb="git branch -av"
alias gd="git diff"
alias gcom="git checkout master"
alias gfa="git fetch --all"
alias gsl="git stash list"
alias gsp="git stash pop"
alias gss="git stash save"
alias gcd="git clean -d -n --dry-run"
alias gca="git clean -d -f"
alias gslog="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"

## docker
alias dk='docker'
alias dl="docker ps -l"
alias dps="docker ps"
alias di="docker images"
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"
alias dkd="docker run -d"
alias drit="docker run -i -t"
alias deit="docker exec -i -t"
alias dcla="docker container ls -a"
alias dclaq="docker container ls -aq"

## kubectl
alias k="kubectl"
alias kaf="kubectl apply -f"
alias kex="kubectl exec -i -t"
alias kg="kubectl get"
alias kga="kubectl get all"
alias kgall="kubectl get all --all-namespaces"
alias kgn="kubectl get nodes"
alias kgp="kubectl get pods"
alias kgd="kubectl get deployments"
alias kgs="kubectl get services"
alias kgr="kubectl get replicasets"
alias kinfo="kubectl cluster-info"
alias kd="kubectl describe"
alias ktp="kubectl top"
alias klf="kubectl logs -f"

# vagrant
alias vgi="vagrant init"
alias vup="vagrant up"
alias vd="vagrant destroy"
alias vdf="vagrant destroy -f"
alias vssh="vagrant ssh"
alias vh="vagrant halt"
alias vssp="vagrant suspend"
alias vst="vagrant status"
alias vre="vagrant resume"
alias vgs="vagrant global-status"
alias vpr="vagrant provision"
alias vr="vagrant reload"
alias vrp="vagrant reload --provision"
alias vba="vagrant box add"
alias vbr="vagrant box remove"
alias vbl="vagrant box list"
alias vbo="vagrant box outdated"
alias vbu="vagrant box update"

## other
alias hs="~/go/bin/httpstat"
alias sdig="dig +short"
alias xdig="dig +short -x"
alias shfmt="~/go/bin/shfmt"
alias bat='bat --theme=Dracula'
alias vim='nvim'
alias wget="wget -c" # resume wget download by default
alias mtr="sudo /usr/local/sbin/mtr"

# FZF Integration
export FZF_DEFAULT_COMMAND='fd --type f'
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
