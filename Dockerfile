FROM ubuntu
MAINTAINER jewels
RUN docker pip install cd
RUN docker gem install cd
RUN cd desmume/src/frontend/posix/
RUN ./autogen.sh
RUN ./configure
RUN make
RUN sudo make install