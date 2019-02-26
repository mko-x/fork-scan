#!/usr/bin/env zsh bash sh
# @maintainer: mko - dev@m-ko.de
# @job: install dependencies

echo "::forkscan dependency setup"
cd ./app
gunicorn -w 4 forkinfo:app
echo
pip3 install -r "./requirements.txt"
echo "::forkscan dependencies installed"

echo "run with gunicorn: \n like 'gunicorn -w 4 forkinfo:app'"