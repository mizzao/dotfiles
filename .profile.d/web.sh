# yarn (1.x only)
if [ -x "$(command -v yarn)" ]; then
    export PATH="$(yarn global bin):$PATH"
fi

# NPM
# user-specific NPM packages;
# See https://github.com/sindresorhus/guides/blob/main/npm-global-without-sudo.md
NPM_PACKAGES="${HOME}/.npm-packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"

export PATH="$NPM_PACKAGES/bin:$PATH"
# Preserve MANPATH if you already defined it somewhere in your config.
# Otherwise, fall back to `manpath` so we can inherit from `/etc/manpath`.
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"

# Meteor
export PATH="${HOME}/.meteor:$PATH"
