#!/bin/bash
docker build -t noip:latest .
docker image save -o noip.tar noip:latest
