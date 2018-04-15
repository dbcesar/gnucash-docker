FROM ubuntu:16.04

RUN apt update
RUN apt install -y build-essential git cmake libtool libltdl-dev libglib2.0-dev icu-devtools libicu-dev libboost-all-dev guile-2.0 guile-2.0-dev swig2.0 libxml++2.6-dev libxslt1-dev xsltproc libgtest-dev google-mock gtk+3.0 libgtk-3-dev libwebkit2gtk-4.0-37 libwebkit2gtk-4.0-dev cmake libdbi-dev libxml2-utils libofx-dev

RUN git clone https://github.com/Gnucash/gnucash.git
RUN mkdir -p /gnucash/build-cmake
RUN mkdir -p /opt/gnucash-cmake

RUN cd /gnucash/build-cmake && cmake -D CMAKE_INSTALL_PREFIX=/gnucash-cmake -D WITH_AQBANKING=OFF -D WITH_SQL=OFF ..
