#!/bin/bash

printf $(aptitude search ~U | wc -l)
