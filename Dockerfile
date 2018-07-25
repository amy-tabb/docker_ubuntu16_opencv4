FROM amytabb/docker_ubuntu16_essentials
MAINTAINER Amy Tabb

RUN git clone https://github.com/opencv/opencv.git

RUN /bin/sh build_opencv.sh

RUN cd ../..

RUN cd opencv
RUN mkdir build
RUN cd build

RUN cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local ..

RUN make -j4

RUN make install

RUN ldconfig

#do not remove directory, because will use this image for building the contrib module as well.
