FROM ubuntu:latest
RUN mkdir test_dir
WORKDIR /test_dir
RUN apt-get update && apt-get --assume-yes install build-essential git make libnet1-dev gcc libprotobuf-dev libprotobuf-c0-dev protobuf-c-compiler protobuf-compiler python-protobuf libnl-3-dev libcap-dev
RUN git clone https://github.com/checkpoint-restore/criu.git
RUN cd criu && pwd && make

ADD . /experiment

ENTRYPOINT ["configs/avida"]
