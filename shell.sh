export PS1="\[\033[1;32m\][nix-shell@\w]\$\[\033[0m\] "
export PATH="$PATH:$(pwd)/node_modules/.bin"
export FORCE_COLOR=1

bun install
