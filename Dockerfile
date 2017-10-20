FROM ubuntu:latest
RUN apt-get install criu

ADD . /experiment

ENTRYPOINT ["/experiment/configs/avida"]
