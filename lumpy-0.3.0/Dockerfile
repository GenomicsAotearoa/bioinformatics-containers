# work from latest LTS ubuntu release
FROM ubuntu:18.04

# set the environment variables
ENV lumpy_version 0.3.0
ENV samblaster_version 0.1.24
ENV sambamba_version 0.6.9
ENV samtools_version 1.9

# run update and install necessary tools
RUN apt-get update -y && apt-get install -y \
    build-essential \
    libnss-sss \
    curl \
    vim \
    less \
    wget \
    unzip \
    cmake \
    python \
    gawk \
    python-pip \
    zlib1g-dev \
    libncurses5-dev \
    libncursesw5-dev \
    libnss-sss \
    libbz2-dev \
    liblzma-dev \
    bzip2 \
    libcurl4-openssl-dev \
    libssl-dev \
    git \
    autoconf

# install numpy and pysam
WORKDIR /usr/local/bin
RUN pip install numpy pysam
#RUN pip install pysam

# install samblaster
WORKDIR /usr/local/bin
RUN wget https://github.com/GregoryFaust/samblaster/archive/v.${samblaster_version}.zip
RUN unzip v.${samblaster_version}.zip
WORKDIR /usr/local/bin/samblaster-v.${samblaster_version}
RUN make
RUN ln -s /usr/local/bin/samblaster-v.${samblaster_version}/samblaster /usr/local/bin/samblaster

# install sambamba
WORKDIR /usr/local/bin
RUN wget https://github.com/biod/sambamba/releases/download/v${sambamba_version}/sambamba-${sambamba_version}-linux-static.gz
RUN gunzip sambamba-${sambamba_version}-linux-static.gz
RUN chmod a+x sambamba-${sambamba_version}-linux-static
RUN ln -s sambamba-${sambamba_version}-linux-static sambamba

# install samtools
WORKDIR /usr/local/bin/
RUN curl -SL https://github.com/samtools/samtools/releases/download/${samtools_version}/samtools-${samtools_version}.tar.bz2 \
    > /usr/local/bin/samtools-${samtools_version}.tar.bz2
RUN tar -xjf /usr/local/bin/samtools-${samtools_version}.tar.bz2 -C /usr/local/bin/
RUN cd /usr/local/bin/samtools-${samtools_version}/ && ./configure
RUN cd /usr/local/bin/samtools-${samtools_version}/ && make
RUN cd /usr/local/bin/samtools-${samtools_version}/ && make install

# install lumpy
WORKDIR /usr/local/bin
RUN wget https://github.com/arq5x/lumpy-sv/releases/download/${lumpy_version}/lumpy-sv.tar.gz
RUN tar -xzvf lumpy-sv.tar.gz
WORKDIR /usr/local/bin/lumpy-sv
RUN make
RUN ln -s /usr/local/bin/lumpy-sv/bin/lumpy /usr/local/bin/lumpy
RUN ln -s /usr/local/bin/lumpy-sv/bin/lumpy_filter /usr/local/bin/lumpy_filter
RUN ln -s /usr/local/bin/lumpy-sv/bin/lumpyexpress /usr/local/bin/lumpyexpress
WORKDIR /usr/local/bin

# set default command
CMD ["lumpy"]