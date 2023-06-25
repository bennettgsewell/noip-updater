# noip-updater
My personal dockerized no-ip dynamic updater

## Building and running the image

### Build the Image

This script will build the Docker Image and export it to a `noip.tar` file in the same working directory.

`sudo ./build.sh`

### Load the Image on the server

`sudo docker image load -i noip.tar`

### Create the Container using Docker Compose

`sudo docker compose up --no-start`

This will create the container and the volume but NOT RUN IT.

### Create a configuration file

Use this command to interactively create the configuration file.

`sudo docker run -v noip:/config -it --rm noip:latest -C`

# Misc

## Updater Client

The client can be manually downloaded [here](https://my.noip.com/dynamic-dns/duc)
