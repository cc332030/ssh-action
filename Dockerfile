FROM alpine

RUN apk add --no-cache \
    curl \
    openssh-client

ENV C_GITHUB_URL=https://github.com/cc332030

ADD *.sh /

RUN ["chmod", "+x", "/entrypoint.sh"]

ENTRYPOINT ["/entrypoint.sh"]
