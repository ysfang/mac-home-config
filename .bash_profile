source ~/.bash_aliases

USER_BASE_PATH=$(python3 -m site --user-base)
export PATH=$PATH:$USER_BASE_PATH/bin
export PATH=$HOME/bin:$PATH

export LDFLAGS="/usr/local/Cellar/zlib/1.2.11/lib"
export CPPFLAGS="/usr/local/Cellar/zlib/1.2.11/include"

# command prefix format
# export PS1="\u \w$ "
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[${BOLD}${MAGENTA}\]\u\[$WHITE\]@\[$ORANGE\]\h\[$WHITE\]: [\[$GREEN\]\w\[$WHITE\]\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" - \")\[$PURPLE\]\$(parse_git_branch)\[$WHITE\]] \$ \[$RESET\]"

# supress the warning of "The default interactive shell is now zsh."
export BASH_SILENCE_DEPRECATION_WARNING=1

