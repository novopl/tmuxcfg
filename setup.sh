#!/bin/bash
set -e

# 'port install coreutils' first.
export PATH="/opt/local/libexec/gnubin:$PATH"

REPO_DIR=$(dirname $(readlink -fm "$0"))

echo $REPO_DIR

[ ! -e "${HOME}/.tmux" ]        && ln -s "${REPO_DIR}/tmux"         "${HOME}/.tmux"      || echo ".zsh already exists, skipping..."
[ ! -e "${HOME}/.tmux.conf" ]   && ln -s "${REPO_DIR}/tmux.conf"    "${HOME}/.tmux.conf" || echo ".zshrc already exists, skipping..."

