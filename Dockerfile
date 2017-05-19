FROM       node:7-alpine
MAINTAINER Eric McNiece <emcniece@gmail.com>

RUN npm i -g sync-files concurrently \
 && mkdir -p /sync1 /sync2

CMD ["concurrently", "sync-files -wv /sync1 /sync2", "sync-files -wv /sync2 /sync1"]