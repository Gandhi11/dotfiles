parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\h:\W\[\033[32m\]\$(parse_git_branch 2>/dev/null)\[\033[00m\] \u\$ "