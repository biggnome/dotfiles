#!/bin/bash

# apt update
echo $(aptitude search '~U' | wc -l) > /home/sandy/.cache/updates

# echo $(apt list --upgradable | expr $(wc -l) - 1) > /home/sandy/.cache/updates
