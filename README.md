# AskMrRobot
# [Ask Mr. Robot](https://www.askmrrobot.com) Simulator Client in a Docker Container

## Setup and First Start
Before the first start you need a Docker volume for all credentials and logs

### Frist Create a docker volume
```bash
docker volume create askmrrobotsettings
```

### Build and Setup container 
Start amr.dll and login to Ask Mr. Robot. 
&& Quit the container

```bash
docker run --rm -ti -v askmrrobotsettings:/AskMrRobotClient sprengstuff/askmrrobot-docker
```

## Running
Once you've performed the setup you can start the container in the background.

```bash
docker run --rm -v askmrrobotsettings:/AskMrRobotClient sprengstuff/askmrrobot-docker
```