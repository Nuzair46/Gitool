#!/bin/sh
mkdir -p ~/bin/gitool
chmod 755 gitool.py
cp gitool.py ~/bin/gitool
cp data.json ~/bin/gitool
export PATH=$PATH":$HOME/bin"