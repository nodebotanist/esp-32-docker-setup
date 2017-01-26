FROM ubuntu:16.04

RUN apt-get update && apt-get upgrade && apt-get install git wget make libncurses-dev flex bison gperf python python-serial
RUN wget https://dl.espressif.com/dl/xtensa-esp32-elf-linux64-1.22.0-61-gab8375a-5.2.0.tar.gz ~

WORKDIR ~/esp32

RUN tar -xzf ../xtensa-esp32-elf-linux64-1.22.0-61-gab8375a-5.2.0.tar.gz
RUN export PATH=$PATH:$HOME/esp32/xtensa-esp32-elf/bin
RUN alias get_esp32="export PATH=$PATH:$HOME/esp/xtensa-esp32-elf/bin"
RUN git clone --recursive https://github.com/espressif/esp-idf.git
RUN alias new_esp32="git clone https://github.com/espressif/esp-idf-template.git"
RUN export IDF_PATH=~/esp32/esp-idf

CMD /bin/bash