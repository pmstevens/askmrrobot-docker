ARG VERSION

FROM --platform=linux/amd64 mcr.microsoft.com/dotnet/core/runtime:3.1-focal
FROM --platform=linux/arm64 mcr.microsoft.com/dotnet/core/runtime:3.1-focal-arm64v8

RUN apt update && apt install -y unzip curl
RUN curl -o AskMrRobotClient.zip https://static.askmrrobot.com/wowsite/client/AskMrRobotClient-universal-${VERSION}.zip
RUN unzip -d / AskMrRobotClient.zip
RUN rm AskMrRobotClient.zip
WORKDIR /AskMrRobotClient
ENTRYPOINT dotnet simclient.dll
