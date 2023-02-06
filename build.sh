#!/bin/env bash
python --version
pip install pipenv
mv Pipfile.hidden Pipfile
mv Pipfile.lock.hidden Pipfile.lock
pipenv sync
make html
cp /opt/build/bin/run-build-functions.sh build/html
