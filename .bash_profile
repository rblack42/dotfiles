export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/rblack/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

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
export SYSTEMC_HOME=/usr/local/systemc231
export PATH="$PATH:/Developer/Simulator/GTKwave/bin"
export PATH="/usr/local/Cellar/bison/3.0.4/bin:$PATH"
export PATH="/usr/local/Cellar/flex/2.6.0/bin:$PATH"

PS=1'\[\e[1;33m\]\u@\h \w ->\n\[\e[1;36m\] \@ \d\$\[\e[m\] '
