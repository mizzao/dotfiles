# Shortcut for getting to elements code directories
el() {
    local el_proj=$1
    local el_path="$HOME/go/src/github.com/elementscode/$el_proj"
    if [ ! -d $el_path ]; then
        mkdir -p $el_path && echo "Created $el_path"
    else
        echo "-> Existing $el_path"
    fi
    cd $el_path
}
