#!/bin/sh

echo "Membuat docker image ... "
#Membuat Docker image dari Dockerfile, dengan nama image item-app & tag v1
docker build -t item-app:v1 .

echo "\nList docker images"
#Melihat daftar image di lokal.
docker images

echo "\nMengubah nama docker image sesuai format docker registry"
#Mengubah nama image agar sesuai dengan format Docker Hub (atau GitHub Packages bila menerapkan saran keempat)
#docker tag item-app:v1 wajibhimung/item-app:v1
docker tag item-app:v1 ghcr.io/wajibhimung/item-app:v1

echo "\nLogin ke Docker Hub"
#Login ke Docker Hub 
#echo $PASSWORD_DOCKER_HUB | docker login -u wajibhimung --password-stdin
echo $CR_PAT | docker login ghcr.io -u wajibhimung --password-stdin

echo "\nMengunggah image ke Docker Hub ..."
#Mengunggah image ke Docker Hub
#docker push wajibhimung/item-app:v1
docker push ghcr.io/wajibhimung/item-app:v1



