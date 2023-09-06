#!/bin/sh
# mkp - Make Project
REPO=$1
DIR="/home/barakiva/Development/lab/${2}"
echo "$DIR $REPO"
degit $REPO $DIR && 
	npm i $DIR &&
	code $DIR

