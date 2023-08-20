# jdungeon-overview
An overview repo to link everything together for the jdungeon project. Check out the howto's to get involved with the project. You can also find all the links here to the repositories related to this project.

## Repositories
- [client](https://github.com/jonathaneeckhout/jdungeon-client)
- [level-server](https://github.com/jonathaneeckhout/jdungeon-level-server)
- [common-server](https://github.com/jonathaneeckhout/jdungeon-common-server)
- [website](https://github.com/jonathaneeckhout/jdungeon-website)
- [database](https://github.com/jonathaneeckhout/jdungeon-database)
- [deployer](https://github.com/jonathaneeckhout/jdungeon-deployer)

## Howtos

- [How to run JDungeon locally (on your pc)](https://github.com/jonathaneeckhout/jdungeon-overview/blob/main/howtos/HowToRunLocally.md)
- [How to contribute code to the project](https://github.com/jonathaneeckhout/jdungeon-overview/blob/main/howtos/HowToContribute.md)
- [How to create a new item](https://github.com/jonathaneeckhout/jdungeon-overview/blob/main/howtos/HowToCreateNewItem.md)


## Design philosophy

1. Currently the main philosophy is **K.I.S.S.** (Keep It Simple Stupid).

   We are trying to achieve a minimal featured version so that the game is playable and has some content. By limiting the feature and content scope of the game the goal of actually launching this game is feasible.

3. Another philosophy is: **release fast and release often.**

   By taking baby steps in development and making sure everything works and is deployed you will eventually see progress growing.

4. Another goal is **code quality and tests.**

   To be able to achieve a certain level of code quality you need to have tests (unit and system tests). Once the game has the basic feature set this will be my main focus. Without the tests in CI pipelines it is unmanageable to prevent regressions and code quality. It's also a tool to enforce people who contribute to maintain that quality level.

5. The final goal and a very important one is **documentation**.

   The game should be well documented so that people understand and easily add/ adapt code. People should also be able to learn from the code.

## Architecture
The heart of JDungeon is the database, this is the place where all persistent information is stored for JDungeon like user credentials, gold, inventory,... 

There are 2 services connected directly to the database:
- the website
- the common-server

The website contains some information about the game but is mainly used to create new accounts and a place to download the clients.

The common server however is the authority server. This server is responsible to login players to the game and store and retrieve persistent data.

The level-server is the server directly in contact with the player and responsible of all the game logic of that world. Currently there is only one, the "Grassland" level server, but the idea is that there would be multiple level-servers running with each responsible for it's part in the world. This is mainly done to distribute the load over multiple instances.

On the user side you have the client which send an authority request to the common-server and is steered to the level-server depending where the character was located at last login. This is the typical game that you install locally on your pc.

Finally you have the deployer. This repository is mainly a grouping of github actions to automate the deployment process. By simply updating the versions inside some files and commiting it to github the game is automatically deployed in a matter of minutes.

![Diagram](jdungeon-architecture.drawio.svg)
