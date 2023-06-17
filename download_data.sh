#!/usr/bin/env bash

if ! command brew
then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

if ! command wget
then
    brew install wget
fi

wget https://mesomod.weebly.com/uploads/9/3/4/0/93403436/data.tar.gz
tar -xzvf data.tar.gz
rm -f data.tar.gz
