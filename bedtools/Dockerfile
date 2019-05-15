FROM alpine 

RUN apk add --update alpine-sdk bash zlib-dev

ENV version 2.25.0
ADD https://github.com/arq5x/bedtools2/releases/download/v${version}/bedtools-${version}.tar.gz /tmp

RUN cd /tmp && tar -xzvf bedtools-${version}.tar.gz && cd bedtools2 && make



