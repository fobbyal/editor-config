#!/usr/bin/env bash
# Toggle pane bg based on whether the pane is in copy-mode.
# Invoked by tmux pane-mode-changed hook with the pane id as $1.

set -eu

pane="$1"
mode=$(tmux display -t "$pane" -p '#{pane_mode}')

case "$mode" in
  copy-mode) tmux select-pane -t "$pane" -P 'bg=#2a1d27' ;;
  *)         tmux select-pane -t "$pane" -P 'default' ;;
esac
