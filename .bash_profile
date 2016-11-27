for file in ~/.{bashrc,bash_aliases}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# automate activation of venv on cd into directory
PROMPT_COMMAND='prompt'
precmd() { 
    eval "$PROMPT_COMMAND" 
}

prompt() {
    if [ "$PWD" != "$MYOLDPWD" ]; then
        MYOLDPWD="$PWD"
        test -e _venv && source _venv/bin/activate
    fi
}

export PATH="$HOME/bin:$PATH"

PS=1'\[\e[1;33m\]\u@\h \w ->\n\[\e[1;36m\] \@ \d\$\[\e[m\] '
