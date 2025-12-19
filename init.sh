#!/bin/bash

# Update system and install Java

pkg update && pkg upgrade -y
pkg install openjdk-21 -y

# Set up directory

mkdir MinecraftServer
cd MinecraftServer

# Download Paper 

wget https://fill-data.papermc.io/v1/objects/3d806bb668eeb8b592ef17d3e9e8c0c3484e358c09b1f2403bf6ebc928cc6c64/paper-1.21.11-44.jar
mv paper-1.21.11-44.jar paper.jar

# Initialize server
java -Xms1G -Xmx2G -jar paper.jar 
rm eula.txt 
wget https://raw.githubusercontent.com/portanz/paper-initialization/refs/heads/main/eula.txt
wget https://raw.githubusercontent.com/portanz/paper-initialization/refs/heads/main/start.sh
wget https://raw.githubusercontent.com/portanz/paper-initialization/refs/heads/main/killserver.sh
chmod +x start.sh
chmod +x killserver.sh
./start.sh


