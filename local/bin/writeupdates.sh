#!/bin/bash

echo $(aptitude search '~U' | wc -l) > /home/sandy/.cache/updates
