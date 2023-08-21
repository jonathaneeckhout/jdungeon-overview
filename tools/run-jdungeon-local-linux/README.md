# How to run JDungeon's development environment on a linux based system
This howto will explain you how to run the JDungeon's development environment on a Linux based system with the help of some scripts. JDungeon's working environment can be installed by executing only 2 scripts. The JDungeon working environment contains all the needed tools to run/develop/debug JDugeon.

## Install the dependencies
Make sure to have following packages installed on your system:
- wget
- unzip
- git
- openssl
- node
- npm
- docker
- docker-compose

The setup script will check if these packages are installed and will not run if they are not met.

Example for debian/ubuntu systems
```bash
sudo apt install -y wget unzip git openssl nodejs npm docker docker-compose
```
