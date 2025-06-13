#!/usr/bin/env bash
apt-get update && \
apt-get install --yes build-essential cmake pkg-config libboost-all-dev libzmq3-dev libssl-dev libsodium-dev libunbound-dev libminiupnpc-dev libunwind-dev libpcsclite-dev liblzma-dev libreadline-dev libldns-dev libexpat1-dev libgtest-dev doxygen graphviz
echo "Dependencies installation complete"
sleep 1s
echo "Download Submodules"
git submodule init && git submodule update
sleep 1s
echo "Make release"
cd ~/electroneropulse && mkdir build && cd build && cmake .. && cd .. && make -j$(nproc)

