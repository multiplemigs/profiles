#!/bin/bash
echo
echo "Type a name for your new python Environment."
read envname
echo
echo "Creating $envname at /Users/miguel/python/$envname"
mkdir /Users/miguel/python/$envname && cd /Users/miguel/python/$envname && virtualenv env
echo "$envname is Ready!"
echo
echo "cd ~/python/$envname to access your environment"
echo
echo "'source ./env/bin/activate' to activate your environment"
echo
echo "'deactivate' to return to your standard python environment"
