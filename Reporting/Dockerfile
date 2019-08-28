FROM ubuntu:18.04
ARG R_VERSION=3.6.1
ARG OS_IDENTIFIER=ubuntu-1804
ENV TZ=Europe/Minsk
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get install -y \
    python2.7 \
	python-pip\
	wget \
	g++ \
	zlib1g-dev \
    libxml2-dev \
    libgsl0-dev \
    libcurl4-gnutls-dev \
    libbz2-dev \
    liblzma-dev \
    libssl-dev 

RUN wget https://cdn.rstudio.com/r/${OS_IDENTIFIER}/pkgs/r-${R_VERSION}_1_amd64.deb && \
    DEBIAN_FRONTEND=noninteractive apt-get install -f -y ./r-${R_VERSION}_1_amd64.deb && \
    ln -s /opt/R/${R_VERSION}/bin/R /usr/bin/R && \
    ln -s /opt/R/${R_VERSION}/bin/Rscript /usr/bin/Rscript && \
    ln -s /opt/R/${R_VERSION}/lib/R /usr/lib/R && \
    rm r-${R_VERSION}_1_amd64.deb && \
    rm -rf /var/lib/apt/lists/* 

RUN apt-get update && apt-get install -y r-cran-curl r-cran-openssl r-cran-xml2

WORKDIR /home

COPY depend.R /home
RUN Rscript /home/depend.R

RUN pip install requests
# bedtools - use the last bedtools, not any of the bedtools2 (numbering v2.18.0 and up) because the output
# format is different

CMD ["R"]


