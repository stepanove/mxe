FROM ubuntu:18.04


RUN	apt update && \
	apt -y install \
	build-essential\
	autoconf \
    automake \
    autopoint \
    bash \
    bison \
    bzip2 \
    flex \
    g++ \
    g++-multilib \
    gettext \
    git \
    gperf \
    intltool \
    libc6-dev-i386 \
    libgdk-pixbuf2.0-dev \
    libltdl-dev \
    libssl-dev \
    libtool-bin \
    libxml-parser-perl \
    lzip \
    make \
    openssl \
    p7zip-full \
    patch \
    perl \
    pkg-config \
    python \
    ruby \
    sed \
    unzip \
    wget \
    xz-utils


RUN	git clone https://github.com/mxe/mxe.git
RUN	cd mxe && make MXE_TARGETS="i686-w64-mingw32.static" qt5
ENV 	PATH PATH=/mxe/usr/bin:/mxe/usr/i686-w64-mingw32.static/qt5/bin:$PATH
