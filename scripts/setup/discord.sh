#!/bin/sh

# In case discord ever updates, until the package manager catches up

echo "Downloading Discord archive..."
curl -L "https://discord.com/api/download?platform=linux&format=tar.gz" -o /opt/discord.tar.gz

echo "Unarchiving Discord..."
cd /opt
tar -xvf /opt/discord.tar.gz

echo "Linking to new Discord..."
unlink /usr/bin/Discord
ln -s /opt/Discord/Discord /usr/bin/Discord

echo "Done!"
