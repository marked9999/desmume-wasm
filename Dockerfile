FROM ubuntu
RUN cd /tmp \
&& apt-get update \
&& apt-get install -y curl apt-utils wget unzip\
&& rm -rf /var/lib/apt/lists/*
RUN wget http://sourceforge.net/projects/desmume/files/desmume/0.9.11/desmume-0.9.11.tar.gz/download \
&& tar xvzf desmume-0.9.11.tar.gz
RUN cd desmume-0.9.11

RUN ./configure
RUN make
RUN make install