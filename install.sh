#!/bin/bash

cd "$(dirname "${BASH_SOURCE}")"

rsync --exclude ".git/" --exclude "install.sh" --exclude "README.md" -av . ~