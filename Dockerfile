FROM node:12
WORKDIR /usr/src/app

ARG TARGETPLATFORM
ARG BUILDPLATFORM
COPY src/server.js .
RUN sed -i "s#TARGETPLATFORM#$TARGETPLATFORM#" server.js
RUN sed -i "s#BUILDPLATFORM#$BUILDPLATFORM#" server.js

CMD ["server.js"]