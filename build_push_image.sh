#!/bin/sh

echo "Membuat docker image ... "
#Membuat Docker image dari Dockerfile, dengan nama image item-app & tag v1
docker build -t item-app:v1 .

echo "\nList docker images"
#Melihat daftar image di lokal.
docker images

echo "\nMengubah nama docker image sesuai format docker registry"
#Mengubah nama image agar sesuai dengan format  GitHub Packages
docker tag item-app:v1 ghcr.io/wajibhimung/item-app:v1

echo "\nLogin ke  GitHub Packages"
#Login ke  GitHub Packages
echo $CR_PAT | docker login ghcr.io -u wajibhimung --password-stdin

echo "\nMengunggah image ke  GitHub Packages ..."
#Mengunggah image ke  GitHub Packages
docker push ghcr.io/wajibhimung/item-app:v1
