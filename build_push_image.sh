#!/bin/sh
#Membuat Docker image dari Dockerfile, dengan nama image item-app & tag v1
docker build -t item-app:v1 .

#Melihat daftar image di lokal.
docker images

#Mengubah nama image agar sesuai dengan format Docker Hub (atau GitHub Packages bila menerapkan saran keempat)
docker tag item-app:v1 wajibhimung/item-app:v1

#Login ke Docker Hub 
echo $PASSWORD_DOCKER_HUB | docker login -u wajibhimung --password-stdin

#Mengunggah image ke Docker Hub
docker push wajibhimung/item-app:v1



