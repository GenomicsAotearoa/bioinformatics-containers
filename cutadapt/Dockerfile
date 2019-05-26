FROM python:3.7-alpine3.9 as base

LABEL version="2.3"
LABEL maintainer=n.knowlton@auckland.ac.nz

From base as builder

RUN mkdir /install
WORKDIR /install

RUN apk add build-base
RUN pip install --install-option="--prefix=/install" cutadapt==2.3

# Create new layer and copy over cutadapt
FROM base
COPY --from=builder /install /usr/local
ENTRYPOINT ["python3", "/usr/local/bin/cutadapt"]