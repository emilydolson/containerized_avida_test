FROM ubuntu:latest
RUN apt-get update
RUN apt-get --assume-yes install criu

ADD . /experiment

ENTRYPOINT ["configs/avida"]
