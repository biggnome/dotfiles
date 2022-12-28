#!/bin/bash

echo $(apt list --upgradable | expr $(wc -l) - 1) > /home/sandy/.cache/updates
