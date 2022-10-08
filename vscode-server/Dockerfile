FROM ubuntu:22.04

ENV CODE_SERVER_PATH=/usr/local/bin/code-server

RUN apt-get update && apt-get install -y wget
RUN wget -qO $CODE_SERVER_PATH https://aka.ms/vscode-server-launcher/x86_64-unknown-linux-gnu
RUN chmod +x $CODE_SERVER_PATH

CMD $CODE_SERVER_PATH serve-local --host 0.0.0.0 --without-connection-token --accept-server-license-terms
