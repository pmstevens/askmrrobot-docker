FROM mcr.microsoft.com/dotnet/core/runtime:3.1-focal
RUN curl -o AskMrRobotClient.zip https://static.askmrrobot.com/wowsite/client/AskMrRobotClient-universal-1605.zip
RUN apt update && apt install unzip
RUN unzip -d / AskMrRobotClient.zip
RUN rm AskMrRobotClient.zip
WORKDIR /AskMrRobotClient
ENTRYPOINT dotnet simclient.dll
