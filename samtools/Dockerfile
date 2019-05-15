FROM alpine:3.7

RUN apk add build-base git ncurses-dev
RUN apk add autoconf automake make gcc musl-dev perl bash zlib-dev bzip2-dev xz-dev curl-dev libressl-dev
RUN git clone git://github.com/samtools/samtools.git
RUN git clone git://github.com/samtools/htslib.git
RUN cd htslib && autoheader && autoconf -Wno-syntax && ./configure && make && make install
RUN cd samtools && autoheader && autoconf -Wno-syntax && ./configure && make && make install


CMD /bin/sh
