#!/bin/bash

set -eou pipefail

echo "Download bc ..."
curl --location --progress-bar "https://raw.githubusercontent.com/stawirej/git-branch-select/master/src/bs" > bs

echo "Add execution rights ..."
chmod ugo+x ./bs

echo "Install bc in /usr/local/bin ..."
mv ./bs /usr/local/bin

echo "Done :)"