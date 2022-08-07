#!/bin/sh


if [[ -z "${PLAN9}" ]]; then
	echo 'No $PLAN9 environment variable found. Using /usr/local/plan9 default.'
	PLAN9=/usr/local/plan9
fi

echo "Cloning plan9port..."
git clone https://github.com/9fans/plan9port $PLAN9

echo "Compiling plan9port..."
cd $PLAN9
./INSTALL

