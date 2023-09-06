#!/bin/sh
DIR=$1
degit barakiva/nodejs-templates#main $DIR && 
	npm i ./$DIR &&
	code ./$DIR
