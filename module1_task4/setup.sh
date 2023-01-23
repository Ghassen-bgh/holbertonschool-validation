#!/bin/bash

## Install Hugo && make

sudo apt-get update && apt-get install -y hugo make

## Using Curl to download hugo.deb

sudo curl -L https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_linux-amd64.deb -o hugo.deb
sudo apt-get install ./hugo.deb

## build the site 
sudo make build