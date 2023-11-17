#!/bin/bash

echo "Start..."
for count in /home/sathya/source/input/*.zip;
do
unzip "$count" "*" -d "/home/sathya/source/input/result"
zip /home/sathya/source/input/result/final-202311.zip /home/sathya/source/input/result/*
done
echo "Completed..."