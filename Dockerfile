FROM ubuntu
RUN cd /tmp \
&& apt-get update \
&& apt-get install -y curl apt-utils wget unzip\
&& rm -rf /var/lib/apt/lists/* \
RUN sudo apt-get tar 
RUN sudo apt-get cd 


RUN wget -O - http://sourceforge.net/projects/desmume/files/desmume/0.9.11/desmume-0.9.11.tar.gz/download | tar xvz
RUN cd desmume-0.9.11

RUN ./configure
RUN make
RUN make install