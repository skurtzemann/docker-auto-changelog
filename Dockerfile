FROM node:13.8.0-alpine

LABEL maintainer "seb@kurtzemann.fr"
RUN apk add --no-cache git

ARG AUTO_CHANGELOG_VER
RUN npm install -g auto-changelog@${AUTO_CHANGELOG_VER}

ENV SRC_PATH /src
RUN mkdir -p $SRC_PATH

VOLUME [ "$SRC_PATH" ]
WORKDIR $SRC_PATH

CMD ["--help"]
ENTRYPOINT ["auto-changelog"]