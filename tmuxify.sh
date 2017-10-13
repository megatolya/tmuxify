#!/bin/sh

if [ "$1" == "-h" -o "$1" == "--help" ]; then
    echo "Usage:"
    echo "  tmuxify [session_name]"
    echo ""
    echo "See https://github.com/megatolya/tmuxify/blob/master/README.md for more info"
    echo ""
    exit 0
fi

cur_dirname=$(basename $PWD)
dirname=${1:-$cur_dirname}
dirname=${dirname//[^a-zA-Z]/}

sessions=$(tmux list-sessions -F "#{session_name}" 2>/dev/null)
new_session=true

for session in $(tmux list-sessions -F "#{session_name}"); do
    if [ $session = $dirname ]
    then
        new_session=false
    fi
done

if [ $new_session = true ]
then
    tmux new-session -s $dirname
else
    tmux attach -t ${dirname}
fi
