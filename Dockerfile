FROM ubuntu:24.04
COPY ./vgccoin.conf /root/.vgccoin/vgccoin.conf
COPY . /vgccoin
WORKDIR /vgccoin

ENV BDB_PREFIX="/vgccoin/db4"
RUN echo $BDB_PREFIX

#shared libraries and dependencies
RUN apt update
RUN apt-get install -y build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils
RUN apt-get install -y libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev wget libfmt-dev

#BerkleyDB for wallet support
#RUN apt-get install -y software-properties-common
#RUN add-apt-repository ppa:bitcoin/bitcoin
#RUN apt-get update
#RUN apt-get install -y libdb4.8-dev libdb4.8++-dev
RUN /vgccoin/contrib/install_db4.sh /vgccoin/ 
ENV BDB_PREFIX="/vgccoin/db4"
RUN echo $BDB_PREFIX

#upnp
RUN apt-get install -y libminiupnpc-dev
#ZMQ
RUN apt-get install -y libzmq3-dev
#build vgccoin source
RUN ./autogen.sh
RUN ./configure BDB_LIBS="-L${BDB_PREFIX}/lib -ldb_cxx-4.8" BDB_CFLAGS="-I${BDB_PREFIX}/include"
RUN make
RUN make install
#open service port
EXPOSE 9667 19667
CMD ["vgccoind", "--printtoconsole"]
