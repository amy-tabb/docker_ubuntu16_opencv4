FROM amytabb/docker_ubuntu16_essentials
MAINTAINER Amy Tabb

RUN git clone https://github.com/opencv/opencv.git

ADD build_opencv.sh /build_opencv.sh

RUN cd opencv

RUN mkdir build

#RUN /bin/sh ./build_opencv.sh

#do not remove directory, because will use this image for building the contrib module as well.
