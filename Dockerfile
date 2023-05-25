FROM ubuntu
MAINTAINER jewels

RUN cd desmume/src/frontend/posix/
RUN ./autogen.sh
RUN ./configure
RUN make
RUN sudo make install