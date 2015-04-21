#!/bin/bash
echo "Please enter a hostname:"
read hostname
echo "Please enter host address:"
read addy
echo "Please enter the name of the identity file to use (cindy_id_rsa , admWC01_id_rsa):"
read idrsa
echo "Please enter a username to use for this box:"
read user

cat >> ~/.ssh/config << _EOF_
Host	$hostname
	Hostname	$addy
	IdentityFile	~/.ssh/$idrsa
	User	$user

_EOF_
