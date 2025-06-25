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

function rerender_on_dir_change --on-variable PWD
    omp_repaint_prompt
end

if status is-interactive
    # Load oh-my-posh with custom config
    oh-my-posh init fish --config ~/.config/oh-my-posh.json | source
end
