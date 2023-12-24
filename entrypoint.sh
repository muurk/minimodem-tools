#!/bin/bash

while getopts m: flag
do
    case "${flag}" in
        m)
          message=${OPTARG}
        ;;
    esac
done

echo "${message}" | minimodem --tx rtty -f output.wav && cat output.wav
