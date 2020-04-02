alias els="elements"

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

# Delete all packages in ~/elements/packages except @elements.
nuke-pkgs() {
    local elements_path="$HOME/elements"
    cd $elements_path
    echo "removing ~/elements/packages/*"
    mv packages/@elements . && rm -rf packages
    mkdir -p packages/ && mv @elements packages/
}
