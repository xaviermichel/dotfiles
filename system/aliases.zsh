alias ls="ls -F --color"
alias l="ls -lAh --color"
alias ll="ls -lh --color"
alias la='ls -A --color'
alias s='cd ..'
alias lh='ls -lh'

alias py='python'
alias publicIP='curl ipinfo.io/ip'

# Run it as root ! (NOPASSWD)
alias ssamba='sudo ~/bin/simple-samba.sh'
alias xupdate='sudo /home/xavier/bin/update_and_upgrade.sh'

# http://unix.stackexchange.com/questions/2577/how-can-i-move-files-and-view-the-progress-e-g-with-a-progress-bar
alias bcp='rsync -aP'
alias bmv='rsync -aP --remove-source-files'

alias meteo='curl http://wttr.in/lyon'
alias pluie="curl -s 'http://www.meteofrance.com/mf3-rpc-portlet/rest/pluie/692660' | jq -r '.niveauPluieText | join(\"\n\")'"

# ------------------------------------
# Docker alias and function from https://github.com/tcnksm/docker-alias
# ------------------------------------

# Get latest container ID
alias dl="docker ps -l -q"

# Get container process
alias dps="docker ps"

# Get process included stop container
alias dpa="docker ps -a"

# Get images
alias di="docker images"

# Get container IP
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"

# Run deamonized container, e.g., $dkd base /bin/echo hello
alias dkd="docker run -d -P"

# Run interactive container, e.g., $dki base /bin/bash
alias dki="docker run -i -t -P"

# Execute interactive container, e.g., $dex base /bin/bash
alias dex="docker exec -i -t"

# Stop all containers
dstop() { docker stop $(docker ps -a -q); }

# Remove all containers
drm() { docker rm $(docker ps -a -q); }

# Stop and Remove all containers
alias drmf='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'

# Remove all images
dri() { docker rmi $(docker images -q); }

# Dockerfile build, e.g., $dbu tcnksm/test
dbu() { docker build -t=$1 .; }

# Show all alias related docker
dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }

# Bash into running container
dbash() { docker exec -it $(docker ps -aqf "name=$1") bash; }

# proxy
dproxy() { docker run -d --net=host --privileged -e http_proxy=$http_proxy -e https_proxy=$https_proxy klabs/forgetproxy }

