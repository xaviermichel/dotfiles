alias ls="ls -F --color"
alias l="ls -lAh --color"
alias ll="ls -lh --color"
alias la='ls -A --color'
alias s='cd ..'
alias lh='ls -lh'

alias py='python'
alias publicIP='curl ipinfo.io/ip'
alias dstats='dstat -cdnpmgs --top-bio --top-cpu --top-mem'

# Run it as root ! (NOPASSWD)
alias ssamba='sudo ~/bin/simple-samba.sh'
alias xupdate='sudo /home/xavier/bin/update_and_upgrade.sh'

# http://unix.stackexchange.com/questions/2577/how-can-i-move-files-and-view-the-progress-e-g-with-a-progress-bar
alias bcp='rsync -aP'
alias bmv='rsync -aP --remove-source-files'

alias meteo='curl http://wttr.in/lyon'
alias pluie="curl -s 'http://www.meteofrance.com/mf3-rpc-portlet/rest/pluie/692660' | jq -r '.niveauPluieText | join(\"\n\")'"

# Get container process
alias dps="docker ps"

# Get process included stop container
alias dpa="docker ps -a"

# Execute interactive container, e.g., $dex base /bin/bash
alias dex="docker exec -i -t"

# Bash into running container
dbash() { docker exec -it $(docker ps -aqf "name=$1") bash; }

# proxy
dproxy() { docker run -d --net=host --privileged -e http_proxy=$http_proxy -e https_proxy=$https_proxy klabs/forgetproxy }

alias kn='kubectl -n'
kc() {
    if [ $# -eq "0" -o "$1" == "none" ]; then
        kubectl config unset current-context
    else
        kubectl config use-context $1
    fi
}
alias yaml='bat --language yaml'

# --------------
# xclip
# --------------
alias setxclip="xclip -selection c"
alias getxclip="xclip -selection c -o"


