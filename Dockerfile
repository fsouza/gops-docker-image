FROM golang:1.8-alpine AS build
RUN  apk add --no-cache git
RUN  go get github.com/google/gops

FROM alpine:3.5
COPY --from=build /go/bin/gops /usr/bin/gops

ENTRYPOINT ["/usr/bin/gops"]
