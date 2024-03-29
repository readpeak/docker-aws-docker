FROM docker:latest

RUN apk --no-cache update && \
    apk upgrade && \
    apk --no-cache add python3 py3-pip py-setuptools ca-certificates groff less jq nodejs npm bash git curl && \
    pip --no-cache-dir install awscli && \
    rm -rf /var/cache/apk/*
