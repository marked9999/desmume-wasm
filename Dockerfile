FROM ubuntu
RUN cd /tmp \
&& apt-get update \
&& apt-get install -y curl apt-utils wget unzip\
&& rm -rf /var/lib/apt/lists/*

# RUN yum -y install wget

# RUN sudo install cd

#RUN cd desmume/src/frontend/posix/
RUN cd desmume/src/frontend/posix/
RUN ./autogen.sh
RUN ./configure
RUN make
RUN make install