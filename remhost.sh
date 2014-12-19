#!/bin/bash
echo "Please enter host to remove"
read hostname

/usr/local/bin/sed "/$hostname/,+4d" ~/.ssh/config >> ~/.ssh/t_config && rm ~/.ssh/config && mv ~/.ssh/t_config ~/.ssh/config

echo ""
echo "$hostname has been removed"
echo "run cat ~/.ssh/config to confirm"
