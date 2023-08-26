FROM alpine:edge

WORKDIR /workspace

COPY bin .

RUN apk update \
    && apk add g++ ninja

RUN ninja

CMD ["./main"]