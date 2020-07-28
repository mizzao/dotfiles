# General helpful things for development

# Open up ~/projects/$1 or create it if it does not exist
proj() {
    local proj_name=$1
    local proj_path="$HOME/projects/$proj_name"
    if [ ! -d $proj_path ]; then
        mkdir -p $proj_path && echo "Created $proj_path"
    else
        echo "-> Existing $proj_path"
    fi
    cd $proj_path
}

# Git awareness
export GITAWAREPROMPT=~/projects/git-aware-prompt
if [ -d $GITAWAREPROMPT ]; then
    source "${GITAWAREPROMPT}/main.sh"
    # https://github.com/jimeh/git-aware-prompt#ubuntu
    export PS1="\${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "
else
    echo "Please check out jimeh/git-aware-prompt to ~/projects/"
fi

# go
export GOPATH="$HOME/go"
export PATH="$PATH:/usr/local/go/bin:$GOPATH/bin"
