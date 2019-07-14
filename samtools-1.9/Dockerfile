FROM conda/miniconda3
LABEL maintainer=n.knowlton@auckland.ac.nz
LABEL version="1.9"

RUN conda install -c bioconda/label/cf201901 samtools openssl=1.0
WORKDIR /data/

CMD ["samtools"]