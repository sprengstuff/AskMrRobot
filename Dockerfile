FROM alpine:latest

MAINTAINER Michael Spreng <info@spreng.org>
LABEL source="https://github.com/sprengstuff/askmrrobot-docker"
LABEL description="AskMrRobot Simulator v1150 - https://www.askmrrobot.com/wow/simulator/client"
RUN echo "Starting installation"

###########
# Runtime #
###########
# make the terminal prettier
COPY dockercopy/bashrc /root/.bashrc

RUN echo 'export PS1="[\u@docker] \W # "' >> /root/.bashrcs && echo "installing things... " \
	&& echo "Microsoft..." \
	&& apt update \
	&& apt install -y wget \
	&& wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb \
    && dpkg -i packages-microsoft-prod.deb \
	&& apt update  \
	&& echo "installing more things... " \
	&& apt install --yes curl \
	&& apt install --yes zip \
	&& apt install --yes unzip \ 
	&& apt install --yes apt-utils \  
	&& apt install --yes locales \
	&& apt install --yes apt-transport-https \
	&& echo "Installing...aspnetcore" \
	&& apt install --yes dotnet-sdk-2.2 \
	&& echo "Installing Robot" \
	&& wget https://static2.askmrrobot.com/wowsite/client/AskMrRobotClient-any-1150.zip \
	&&unzip AskMrRobotClient-any-1150.zip 

WORKDIR /AskMrRobotClient
CMD [ "/usr/bin/dotnet", "amr.dll" ]

