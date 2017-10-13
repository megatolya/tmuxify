#!/bin/sh

curl -fsSL "https://raw.githubusercontent.com/megatolya/tmuxify/master/tmuxify.sh" > /usr/local/bin/tmuxify
chmod +x /usr/local/bin/tmuxify
echo "tmuxify installed"
echo ""
echo "try it: tmuxify -h"
echo ""
