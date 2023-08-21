#!/bin/bash

echo "Setting up JDungeon to run locally"

# Check if the dependencies are installed

echo "Checking if dependencies are installed"

if ! command -v wget &>/dev/null; then
    echo "Wget is not installed. Please install wget before trying again. Exiting."
    exit 1
fi

if ! command -v unzip &>/dev/null; then
    echo "Unzip is not installed. Please install unzip before trying again. Exiting."
    exit 1
fi

if ! command -v git &>/dev/null; then
    echo "Git is not installed. Please install git before trying again. Exiting."
    exit 1
fi

if ! command -v openssl &>/dev/null; then
    echo "Openssl is not installed. Please install openssl before trying again. Exiting."
    exit 1
fi

if ! command -v node &>/dev/null; then
    echo "Node is not installed. Please install node before trying again. Exiting."
    exit 1
fi

if ! command -v npm &>/dev/null; then
    echo "Npm is not installed. Please install npm before trying again. Exiting."
    exit 1
fi

if ! command -v docker &>/dev/null; then
    echo "Docker is not installed. Please install docker before trying again. Exiting."
    exit 1
fi

if ! command -v docker-compose &>/dev/null; then
    echo "Docker-compose is not installed. Please install docker-compose before trying again. Exiting."
    exit 1
fi

echo "All dependencies are installed"

# Make the parent directory
echo "Create parent jdungeon directory"
mkdir -p jdungeon

# Go into the parent directory
cd jdungeon

# Download and unzip godot
echo "Downloading an unzipping Godot"
wget https://github.com/godotengine/godot/releases/download/4.1.1-stable/Godot_v4.1.1-stable_linux.x86_64.zip
unzip Godot_v4.1.1-stable_linux.x86_64.zip

# Install all the repos
echo "Cloning the source code"
git clone https://github.com/jonathaneeckhout/jdungeon-client
git clone https://github.com/jonathaneeckhout/jdungeon-level-server
git clone https://github.com/jonathaneeckhout/jdungeon-common-server
git clone https://github.com/jonathaneeckhout/jdungeon-website
git clone https://github.com/jonathaneeckhout/jdungeon-database

# Generate self signed certificates to be used for setting up a secure connection
echo "Generating the self signed certificates"
../generate-certificates.sh

# Copy the specific config files content into the config files for each component
echo "Copying the configuration files"
cp ../cfg/jdungeon-client-env jdungeon-client/.env
cp ../cfg/jdungeon-level-server-env jdungeon-level-server/.env
cp ../cfg/jdungeon-common-server-env jdungeon-common-server/.env
cp ../cfg/jdungeon-common-server-init-json jdungeon-common-server/.init.json
cp ../cfg/jdungeon-website-env jdungeon-website/.env
cp ../cfg/jdungeon-database-env jdungeon-database/.env

# Install the nodejs packages for the website and common server
echo "Installing the nodejs packages"
cd jdungeon-website && npm install && cd ..
cd jdungeon-common-server && npm install && cd ..

echo "JDungeon installation completed"
