#!/bin/sh

command -v go >/dev/null 2>&1
if [ $? -gt 0 ]; then
	echo "In order to bootstrap source Go, you need to already have a Go compiler installed"
	exit
fi

echo "Fetching Go's git repository..."
mkdir -p ~/src
git clone https://go.googlesource.com/go ~/src/go

echo "Building Go..."
cd ~/src/go/src
./make.bash
cd $OLDPWD 

echo "Done!"
