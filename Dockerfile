FROM alpine:3.6

ARG AWS_DEFAULT_REGION=us-west-1
ARG AWSCLI_VER=1.14.2

RUN apk add --no-cache --upgrade python3 && \
    pip3 install awscli==${AWSCLI_VER} --upgrade --no-cache-dir # && \
    rm -rf /root/.cache

ENTRYPOINT ["/usr/bin/aws"]
