export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/rblack/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

for file in ~/.{bashrc,bash_aliases}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

export PATH="$HOME/bin:$PATH"

