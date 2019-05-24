FROM python:3.7-alpine as base

From base as builder

RUN mkdir /install
WORKDIR /install

RUN apk add build-base
RUN pip install --install-option="--prefix=/install" cutadapt

# Create new layer and copy over cutadapt
FROM base
COPY --from=builder /install /usr/local
ENTRYPOINT ["python3", "/usr/local/bin/cutadapt"]