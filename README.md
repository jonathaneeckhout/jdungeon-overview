# jdungeon-overview
An overview repo to link everything together for the jdungeon project
## Repositories
- [client](https://github.com/jonathaneeckhout/jdungeon-client) - The game client
- [level-server](https://github.com/jonathaneeckhout/jdungeon-level-server) - The server responsible for the certain level
- [common-server](https://github.com/jonathaneeckhout/jdungeon-common-server)
- [website](https://github.com/jonathaneeckhout/jdungeon-website)
- [database](https://github.com/jonathaneeckhout/jdungeon-database)
- [deployer](https://github.com/jonathaneeckhout/jdungeon-deployer)

## Architecture
![Diagram](jdungeon-architecture.drawio.svg)

## How to run locally
This section explains how to run your own instance of JDungeon. It will provide example commands focussed on Linux but the main concepts can be transfered to Windows as well.
### Dependencies
Make sure the following packages/programs are installed
- git
- node
- npm
- docker
- docker-compose
- godot version 4.x (take the latest stable)
### Setup
Download all the needded repos, for ease of use make a general jdungeon directory
```bash
cd <your workspace>
mkdir jdungeon
cd jdungeon
git clone https://github.com/jonathaneeckhout/jdungeon-client
git clone https://github.com/jonathaneeckhout/jdungeon-level-server
git clone https://github.com/jonathaneeckhout/jdungeon-common-server
git clone https://github.com/jonathaneeckhout/jdungeon-website
git clone https://github.com/jonathaneeckhout/jdungeon-database
```
To ease configuration with environment variables, jdungeon can make use of .env files. Create the following .env files and change the variables to your needs.
#### jdungeon-database
```bash
cd jdungeon-database
touch .env
nano .env
```
The content of jdungeon-datase/.env is
```bash
POSTGRES_USER=testuser
POSTGRES_PASSWORD=testpassword
POSTGRES_DB=jdungeon
```
Next you can run the database
```bash
docker-compose up
or if you want to deamonize it
docker-compose up -d
```

## How to contribute
