#!/bin/bash
# @maintainer: mko - dev@m-ko.de
# @job: install dependencies

echo "::forkscan dependency setup"
#cd ./app
echo "::working dir: $(pwd)"
#gunicorn -w 4 forkinfo:app

pip3 install -r "./requirements.txt"
echo "::forkscan dependencies installed"

echo "run with gunicorn: \n like 'gunicorn -w 4 forkinfo:app'"
