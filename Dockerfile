FROM ubuntu
MAINTAINER jewels

RUN sudo install install cd

RUN gem install cd
RUN cd desmume/src/frontend/posix/
RUN ./autogen.sh
RUN ./configure
RUN make
RUN sudo make install