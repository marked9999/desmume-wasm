FROM ubuntu
MAINTAINER jewels
RUN wget -O - http://sourceforge.net/projects/desmume/files/desmume/0.9.11/desmume-0.9.11.tar.gz/download | tar xvz
RUN cd desmume-0.9.11
RUN ./configure
RUN make
RUN sudo make install

