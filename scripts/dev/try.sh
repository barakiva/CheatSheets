#!/bin/bash

a_flag=''
b_flag=''
files=''
verbose='false'

print_usage() {
  printf "Usage: ..."
}

while getopts 'abf:v' flag; do
  case "${flag}" in
    a) a_flag='true' ;;
    b) b_flag='true' ;;
    f) files="${OPTARG}"
       echo "Files: $files" ;;
    v) verbose='true' ;;
    *) print_usage
       exit 1 ;;
  esac
done