#!/usr/bin/env bash


# Get Vagrantfile

echo "Getting Vagrantfile, password"

curl -u alagalah -H "Accept: application/vnd.github.raw" -O "https://api.github.com/repos/alagalah/emacsgit/contents/devvm.tar.gz"

tar -xvf devvm.tar.gz

sudo -u alagalah vagrant up --provider=virtualbox
