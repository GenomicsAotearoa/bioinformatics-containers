FROM ubuntu:18.04
ARG R_VERSION=3.6.1
ARG OS_IDENTIFIER=ubuntu-1804
ENV TZ=Europe/Minsk
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get install -y \
    python2.7 \
	wget \
	g++ \
	zlib1g-dev \
    libxml2-dev \
    libgsl0-dev \
    libcurl4-gnutls-dev \
    libbz2-dev \
    liblzma-dev 

RUN wget https://cdn.rstudio.com/r/${OS_IDENTIFIER}/pkgs/r-${R_VERSION}_1_amd64.deb && \
    DEBIAN_FRONTEND=noninteractive apt-get install -f -y ./r-${R_VERSION}_1_amd64.deb && \
    ln -s /opt/R/${R_VERSION}/bin/R /usr/bin/R && \
    ln -s /opt/R/${R_VERSION}/bin/Rscript /usr/bin/Rscript && \
    ln -s /opt/R/${R_VERSION}/lib/R /usr/lib/R && \
    rm r-${R_VERSION}_1_amd64.deb && \
    rm -rf /var/lib/apt/lists/* && \
    ln -s /usr/bin/python2.7 /usr/bin/python


WORKDIR /home

COPY depend.R /home
RUN Rscript /home/depend.R

RUN wget http://downloads.sourceforge.net/project/adtex/ADTEx.v2.0/ADTEx.v.2.0.tar.gz && \
    tar xf ADTEx.v.2.0.tar.gz && \
    mv /home/ADTEx.v.2.0/* /usr/bin
# bedtools - use the last bedtools, not any of the bedtools2 (numbering v2.18.0 and up) because the output
# format is different
ENV version 2.28.0

ADD https://github.com/arq5x/bedtools2/releases/download/v${version}/bedtools-${version}.tar.gz /tmp/

RUN apt-get install bash\
    && cd /tmp/ \
    && tar xzvf bedtools-${version}.tar.gz \
    && cd bedtools2 \
    && make \
    && rm /tmp/bedtools-${version}.tar.gz 

ENTRYPOINT ["python", "/usr/bin/ADTEx.py"]
CMD ["--help"]


