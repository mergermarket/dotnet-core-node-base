FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build-env

RUN apt-get update -q && apt-get install -y curl git nano
RUN apt-get install -y nodejs
RUN apt-get install -y npm

RUN npm install -g npm
RUN npm install -g n
RUN n stable

CMD ["/bin/bash"]
