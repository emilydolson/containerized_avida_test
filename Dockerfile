FROM ubuntu:latest
RUN apt-get update
RUN apt-get --assume-yes install git libprotobuf-dev libprotobuf-c0-dev protobuf-c-compiler protobuf-compiler python-protobuf libnl-3-dev libcap-dev
RUN git clone git@github.com:checkpoint-restore/criu.git
RUN cd criu
RUN make

ADD . /experiment

ENTRYPOINT ["configs/avida"]
