FROM alpine:3.18

RUN apk --update add git-crypt git-lfs

WORKDIR /opt/project

COPY entrypoint.sh .

ENTRYPOINT ["/opt/project/entrypoint.sh"]
