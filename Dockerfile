FROM microsoft/dotnet:2.2-aspnetcore-runtime

MAINTAINER Michael Spreng <info@spreng.org>
LABEL source="https://github.com/sprengstuff/askmrrobot-docker"
LABEL description="AskMrRobot Simulator v1150 - https://www.askmrrobot.com/wow/simulator/client"

RUN echo "installing things... " \
	&& apt update \
	&& apt install -y wget \
	&& apt install -y unzip \
	&& echo "Installing Robot" \
	&& wget https://static2.askmrrobot.com/wowsite/client/AskMrRobotClient-any-1150.zip \
	&& unzip AskMrRobotClient-any-1150.zip

WORKDIR /AskMrRobotClient
CMD [ "/usr/bin/dotnet", "amr.dll" ]

