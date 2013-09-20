#!/bin/bash

echo "------------------------------"
echo "$ sh scripts/node-update.sh"
echo "------------------------------"

#echo 'export PATH=$HOME/local/bin:$PATH' >> ~/.bashrc
#. ~/.bashrc
mkdir ~/local
mkdir ~/node-latest-install
cd ~/node-latest-install
curl http://nodejs.org/dist/node-latest.tar.gz | tar xz --strip-components=1
./configure --prefix=~/local
make install
curl https://npmjs.org/install.sh | sh

echo "Done!"