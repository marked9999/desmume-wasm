FROM ubuntu
RUN yum -y install wget

RUN sudo install cd

RUN cd desmume/src/frontend/posix/
RUN ./autogen.sh
RUN ./configure
RUN make
RUN sudo make install