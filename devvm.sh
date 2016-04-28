!#/bin/bash

# Get Vagrantfile

echo "Getting Vagrantfile, password"

curl -u alagalah -H "Accept: application/vnd.github.raw" -O "https://api.github.com/repos/alagalah/emacsgit/contents/devvm.tar.gz"

tar -xvf devvm.tar.gz

read -p "CPUs:[1]: " VCPUS
VCPUS=${VCPUS:-1}
read -p "RAM:[4]G: " VRAM
VRAM=${VRAM:-4}
VRAM=$($VRAM*1024)

echo "vagrant up"
