# jdungeon-overview
An overview repo to link everything together for the jdungeon project
## Repositories
- [client](https://github.com/jonathaneeckhout/jdungeon-client) - The game client
- [level-server](https://github.com/jonathaneeckhout/jdungeon-level-server) - The server responsible for the certain level
- [common-server](https://github.com/jonathaneeckhout/jdungeon-common-server)
- [website](https://github.com/jonathaneeckhout/jdungeon-website)
- [deployer](https://github.com/jonathaneeckhout/jdungeon-deployer)

## Architecture
![Diagram](jdungeon-architecture.drawio.svg)

## How to run locally
This section explains how to run your own instance of JDungeon. It will provide example commands focussed on Linux but the main concepts can be transfered to Windows as well.
### Dependencies
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
```   

## How to contribute
