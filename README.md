# AskMrRobot Simulator Client in docker 
[Ask Mr. Robot](https://www.askmrrobot.com) Simulator Client in a Docker Container

### Setup and First Start
Before the first start you need a Docker volume for all credentials and logs

### Frist Create a docker volume
```bash
docker volume create askmrrobotsettings
```

#### Build and Setup container 
Start amr.dll and login to Ask Mr. Robot. 
&& Quit the container

```bash
docker run --rm -it -v askmrrobotsettings:/AskMrRobotClient sprengstuff/askmrrobot-docker
```

#### Running
Once you've performed the setup you can start the container in the background.

```bash
docker run --rm -v askmrrobotsettings:/AskMrRobotClient sprengstuff/askmrrobot-docker
```



#### AMR-Password reset
if you lost or reset your AMR-password 
you need to reset the credentials in the docker-container

##### simple way: 
-delete the docker volume askmrrobotsettings
and restart with creating a docker volume and Build and Setup container
```bash
docker volume rm askmrrobotsettings
docker volume create askmrrobotsettings

```
##### alternative
start the docker-container and run amr.dll manually, enter the credentials and exit the container 
```bash
docker run --rm -it -v askmrrobotsettings:/AskMrRobotClient sprengstuff/askmrrobot-docker
/usr/bin/dotnet  amr.dll 
```

