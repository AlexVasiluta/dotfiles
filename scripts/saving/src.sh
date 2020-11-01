#!/bin/sh

cd ~
mountNAS
tar --exclude=src/go -czvf ~/Fisiere/src.tgz src
