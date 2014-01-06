alias ls="ls -F --color"
alias l="ls -lAh --color"
alias ll="ls -lh --color"
alias la='ls -A --color'
alias s='cd ..'
alias lh='ls -lh'

# coloration de logs
alias lesslog() { ccze -A < $1 | less -R; }
alias logtail() { tail -f $1 | ccze -A; }

# Run it as root ! (NOPASSWD)
alias ssamba='sudo ~/bin/simple-samba.sh'

