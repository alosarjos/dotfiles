# Init mise for dev tools on the path
mise activate fish | source

# Init zoxide to navigate faster
zoxide init fish | source

# Configure aliases

## Zoxide
alias cd='z'

## Eza
alias lD='eza -glD --group-directories-first --git'
alias lDD='eza -glDa --group-directories-first --git'
alias lS='eza -gl -ssize --group-directories-first --git'
alias lT='eza -gl -snewest --group-directories-first --git'
alias la='eza -gla --group-directories-first --git'
alias ldot='eza -gld --group-directories-first --git .*'
alias ll='eza -gl --group-directories-first --git'
alias ls='eza -g --group-directories-first --git'
alias lsd='eza -gd --group-directories-first --git'
alias lsdl='eza -gdl --group-directories-first --git'

if status is-interactive
    starship init fish | source
end
