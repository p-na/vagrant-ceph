#!/bin/bash

echo "Do you want to delete your previous cluster? (y/N)"
read destroy 
echo "answered: $destroy"
if [ ! -z "$destroy" ] && [ "y" = $destroy ]; then
	vagrant destroy -f
fi
# vagrant up --provider=libvirt --no-parallel
vagrant up # --no-parallel
