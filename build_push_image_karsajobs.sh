#!/bin/sh

echo "Membuat docker image ... "
#Membuat Docker image dari Dockerfile
docker build -t ghcr.io/wajibhimung/karsajobs:latest .

echo "\nLogin ke  GitHub Packages"
#Login ke  GitHub Packages
echo $CR_PAT | docker login ghcr.io -u wajibhimung --password-stdin

echo "\nMengunggah image ke  GitHub Packages ..."
#Mengunggah image ke  GitHub Packages
docker push ghcr.io/wajibhimung/karsajobs:latest
