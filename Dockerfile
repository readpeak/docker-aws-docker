FROM docker:20.10.23

RUN apk --no-cache update && \
    apk upgrade && \
    apk --no-cache add python py-pip py-setuptools ca-certificates groff less jq nodejs nodejs-npm bash git curl && \
    pip --no-cache-dir install awscli && \
    rm -rf /var/cache/apk/*
