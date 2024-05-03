FROM alpine

RUN apk add --no-cache \
        bash \
        httpie \
        jq && \
        which bash && \
        which http && \
        which jq
       
COPY entrypoint.sh /usr/bin/entrypoint.sh
COPY sample.json /sample.json

ENTRYPOINT ["entrypoint.sh"]
