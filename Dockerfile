FROM ubuntu:latest
WORKDIR /home
RUN apt-get update && apt-get --assume-yes install git make libnet1-dev gcc libprotobuf-dev libprotobuf-c0-dev protobuf-c-compiler protobuf-compiler python-protobuf libnl-3-dev libcap-dev
RUN git clone https://github.com/checkpoint-restore/criu.git
RUN cd criu && make

ADD . /experiment

ENTRYPOINT ["configs/avida"]
