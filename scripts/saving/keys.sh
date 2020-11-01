#!/bin/sh

cd ~
mountNAS
tar -czvf ~/Fisiere/keys.tgz .gnupg .ssh creds.txt
