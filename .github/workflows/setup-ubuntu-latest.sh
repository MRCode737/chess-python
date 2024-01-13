#!/bin/sh -e

# Stockfish
sudo apt-get install -y stockfish

# Crafty
sudo apt-get install -y crafty

# Gaviota libgtb
git clone https://github.com/MRCode737/chess-python.git --depth 1
cd chess-python
make
echo "LD_LIBRARY_PATH=`pwd`:${LD_LIBRARY_PATH}" >> $GITHUB_ENV
cd ..
