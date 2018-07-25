FROM kaipark/docker-ubuntu
MAINTAINER KaiPark <ggogun@gmail.com>

ENV GIT_URL https://github.com/ethereum/solidity.git
RUN mkdir solidity
WORKDIR /solidity

RUN apt update -y && apt upgrade -y
#RUN apt install -y build-essential cmake libboost-all-dev
RUN apt install -y libboost-all-dev
RUN git clone --recursive $GIT_URL

RUN cd solidity && mkdir build && cd build && cmake .. && make && make install
RUN touch ~/.bashrc && echo 'export LD_LIBRARY_PATH=/usr/local/lib' > ~/.bashrc
RUN cd solidity/build/lllc && cp lllc /usr/local/bin/

VOLUME ["/solidity/source"]
