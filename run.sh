#! /bin/bash

# Printing working directory
pwd

# Simple test
echo "Yahooooooooo testingggg"

# Building container image from Dockerfile and running app
docker build -t simpleprocess:latest .
docker run simpleprocess


# Delete later
# pwd
# docker run -d -p 5000:5000 flask-sample