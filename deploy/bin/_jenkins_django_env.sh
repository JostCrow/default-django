#!/bin/bash
cur_dir="$(dirname "$0")"

envdir=$cur_dir/../env

# Helper script that sets-up the Django environment for Jenkins
export DJANGO_SETTINGS_MODULE={{ project_name|lower }}.conf.test
if [ ! -d "$envdir" ]; then
    virtualenv $envdir -p python3
fi

. $envdir/bin/activate

echo "Installing requirements..."
pip install pip --upgrade

# echo ".. Compiling dependencies versions..."
# pip install pip-tools
# pip-compile requirements/base.in --output-file requirements/base.txt

echo ".. Installing testing requirements..."
pip install -r requirements/test.txt
