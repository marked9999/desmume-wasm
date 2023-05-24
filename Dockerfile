
RUN sudo apt-get install gcc
RUN gcc make libglib2 libgtk2 libglade gettext libsdl zlib intltool agg libasound libpcap
RUN sudo apt-get install build-essential autoconf automake libgtk2.0-dev libglu1-mesa-dev libsdl1.2-dev libglade2-dev gettext zlib1g-dev libosmesa6-dev intltool libagg-dev libasound2-dev libsoundtouch-dev libpcap-dev
RUN desmume --cpu-mode=1