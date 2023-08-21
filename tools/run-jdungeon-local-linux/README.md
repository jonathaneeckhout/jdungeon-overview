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

Example for debian/ubuntu systems:
```bash
sudo apt install -y wget unzip git openssl nodejs npm docker docker-compose
```

## Run the setup script
The setup script will fetch all the repos/godot and place the configuration files into the right location. Everything is stored in the **jdungeon** directory.
If you want to have a clean workspace, just remove this directory.

Execute the setup script:
```bash
./setup.sh
```

## Run the development environment

The run script will start all the services needed for to run JDungeon. 

Execute the run script:
```bash
./run.sh
```

If you want to stop everything press CTRL+C and close the Godot instances manually.

## Create a testplayer user
The default configuration used by the scripts expect to have a **testplayer** to login. 

Create this use by accessing the webui which is running on [https://localhost:8443](https://localhost:8443]). Your browser may complain about a risk and this is due to using generated self signed certificates. Accept the risks and create the following account:
- username: testplayer
- email: test@test.com (not really important)
- password:testpassword

If you press submit check your terminal for a message like this:
```bash
https://localhost:8443/verify.html?email=lalal%40lala.com&code=714463
```

Copy this link and open in your browser, press the button and the testplayer is ready to be used.

## Run the server and client
To actually test and play JDungeon you need to:
1. Run the server via Godot
2. Run the client via Godot

Always make sure to first start the server and then the client.

Have fun developing/testing/debugging!
