FROM mcr.microsoft.com/dotnet/core/runtime:3.1
RUN apt update && apt install unzip curl
RUN curl -o AskMrRobotClient.zip https://static.askmrrobot.com/wowsite/client/AskMrRobotClient-universal-1605.zip
RUN unzip -d / AskMrRobotClient.zip
RUN rm AskMrRobotClient.zip
WORKDIR /AskMrRobotClient
ENTRYPOINT dotnet simclient.dll
