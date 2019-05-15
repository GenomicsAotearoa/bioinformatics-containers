FROM python:3.7-alpine

RUN apk add build-base
RUN pip install cutadapt

ENTRYPOINT ["python3", "/usr/local/bin/cutadapt"]
