# VSCode Cloud Docker

Create a cloud development environment with vscode and access it from any browser anywhere. 

This repository contains a docker compose configuration to setup the environment. It will start two containers: one containing the `vscode-server` running in local mode and another with a `nginx` server reverse proxy to let the environment to be accessible remotely.

# Installation
1) Install docker: https://docs.docker.com/engine/install/
2) Generate a self signed ssl certificate and basic auth credentials file: `./setup.sh`
3) Run docker compose: `docker compose up`
4) Access your environment from any browser:`https://<your-server-ip>`
