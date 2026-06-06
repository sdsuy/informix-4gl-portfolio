FROM debian:bookworm-slim

ENV DEBIAN_FRONTEND=noninteractive
ENV AUBITDIR=/aubit4glsrc
ENV A4GL_UI=TUI
ENV INFORMIXDIR=/opt/ibm/informix
ENV INFORMIXSERVER=informix
ENV INFORMIXSQLHOSTS=/opt/ibm/informix/etc/sqlhosts
ENV A4GL_SQLTYPE=esql
ENV A4GL_DBDATE=DMY4
ENV PATH=/aubit4glbin/bin:/aubit4glsrc/bin:/opt/ibm/informix/bin:$PATH
ENV LD_LIBRARY_PATH=/aubit4glbin/lib:/aubit4glsrc/lib:/opt/ibm/informix/lib:/opt/ibm/informix/lib/esql:/opt/ibm/informix/lib/cli:$LD_LIBRARY_PATH

RUN apt-get update && apt-get install -y \
    wget build-essential autoconf bison flex netcat-openbsd \
    libncurses5 libncurses5-dev libncursesw5-dev \
    pkg-config unixodbc unixodbc-dev \
    libglib2.0-dev gawk libsigsegv2 sqlite3 \
    subversion make gcc \
    && rm -rf /var/lib/apt/lists/*

RUN wget -O /tmp/aubit4glsrc.tar.gz https://www.aubit.com/aubit4gl/src/aubit4glsrc.1.6.3.tar.gz \
    && tar xf /tmp/aubit4glsrc.tar.gz -C / \
    && rm /tmp/aubit4glsrc.tar.gz

WORKDIR /aubit4glsrc

RUN ./configure --prefix=/aubit4glbin

RUN make -j1

WORKDIR /work

CMD ["/bin/bash"]
