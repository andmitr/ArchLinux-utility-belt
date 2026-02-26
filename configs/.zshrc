# $HOME/.zshrc
export ZSH="$HOME/.oh-my-zsh"
export VISUAL="zeditor --wait"
export EDITOR="mcedit"
export h=$HOME
export LANG="en_US.UTF-8"
export GPG_TTY="$(tty)"
export JAVA_HOME="$(readlink -f /usr/lib/jvm/default)"
export GOPATH="$HOME/go"
export DATE_NOW="$(date "+%d-%B-%Y")"
export GOPRIVATE="github.com/andmitr/*"
export gh="github.com"
export repo="github.com/andmitr"
export GSK_RENDERER=cairo
export CURRENT_DIR="$(basename "$PWD")"
chpwd() {
  CURRENT_DIR="$(basename "$PWD")"
}
# Compilation flags
export ARCHFLAGS="-arch $(uname -m)"
#ZSH_THEME="jonathan"
ZSH_THEME="agnoster"

zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time
# zstyle ':omz:update' frequency 13

# Enable command auto-correction.
ENABLE_CORRECTION="true"

plugins=(sudo)

source $ZSH/oh-my-zsh.sh

# User configuration
set -a
source $HOME/.env
set +a

path+=(
    $HOME/.local/bin
    $HOME/go/bin
    $JAVA_HOME/bin
    $HOME/.zfunc
    /usr/bin
)

export PATH

# Custom functions
fpath+=($HOME/.zfunc)
autoload -Uz $HOME/.zfunc/*(:t)

zstyle ':completion:*' file-sort name
zstyle ':completion:*' list-dirs-first true
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/sbin /sbin $path
zstyle ':completion:*' file-patterns '%p:globbed-files *(-/):directories'
zstyle ':completion:*' rehash true

# disables confirmation prompt for rm *
setopt rm_star_silent

# Aliases
# Pacman
alias pmu='sudo pacman -Rsn'
alias orphans_check="pacman -Qdtq"
alias clear_cache='sudo paccache -rk1 && sudo paccache -ruk0 && yay -Scc --noconfirm'
alias pmi='sudo pacman -S'
alias pms='sudo pacman -Ss'
alias rmdb='sudo rm /var/lib/pacman/db.lck'

## VPN
alias vpn_add="sudo nmcli connection import type wireguard file"
alias vpn_del="nmcli connection delete"
alias vpn_on="nmcli connection up"
alias vpn_off="nmcli connection down"
alias vpn_show_active="nmcli connection show --active"
alias vpn_show="nmcli connection show"

#Git
alias gcp="git add . && git commit && git push && git push --tags"
alias glp="git log --all --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)' --abbrev-commit" # git log pretty
alias gl="git log"
alias gp="git push && git push --tags"
alias gaa="git add --all"

# Docker
alias dc="docker"
alias dcr="docker run"
alias dcri="docker run -it"
alias dclog="echo "$DOCKER_HUB_TOKEN" | docker login -u theevilgrinch --password-stdin"

# NPM
alias nig="sudo npm install -g"
alias nug="sudo npm uninstall -g"
alias nisd="npm install --save-dev"
alias nusd="npm uninstall --save-dev"
alias clean_cache_npm="npm cache verify --force && npm cache clean --force"
alias nu="npm uninstall --save-dev"

# Golang
alias gr="go run"
alias gb="go build"
alias gbp="go build -ldflags "-s -w""
alias gmi="go mod init"
#alias gg="go get"

# Other
alias clear_swap="sudo swapoff -a && sudo swapon -a"
alias update_fonts="sudo fc-cache -fv && fc-cache -f -v"
alias off="sudo shutdown --no-wall"
alias allow_localhost3000="sudo ufw allow from 192.168.1.0/24 to any port 3000"
alias disallow_localhost3000="sudo ufw delete allow from 192.168.1.0/24 to any port 3000"
alias clear_cache="sudo pacman -Scc --noconfirm && sudo pacman -Rns $(pacman -Qdtq) --noconfirm"
alias ssd_free="df -h /dev/sda2"
alias m="mc"
alias sm="sudo mc"
alias se="sudo mcedit"
alias e="mcedit"
alias td="mktemp -d -p ."
alias tf="mktemp -p ."
alias tg="tar -czvf"
alias utg="tar -xzvf"
alias tc="touch"
alias mk="make"
alias testcommit="cd ~/projects/test && echo $DATE_NOW >> ./test.txt && git add . && git commit -m "$DATE_NOW" && git push"
alias zconf="mcedit $HOME/.zshrc"
alias z="zeditor"
alias guarda="$h/soft/Guarda-1.1.1.AppImage"

unset zle_bracketed_paste
