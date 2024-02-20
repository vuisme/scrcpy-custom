FROM ubuntu:focal-20220302

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update -qq
RUN apt-get install -qy \
        ffmpeg libsdl2-2.0-0 adb wget \
        gcc git pkg-config meson ninja-build libsdl2-dev \
        libavcodec-dev libavdevice-dev libavformat-dev libavutil-dev \
        libusb-1.0-0 libusb-1.0-0-dev

WORKDIR /src
ENV BUILDDIR=build-auto

CMD ["/src/build.sh"]