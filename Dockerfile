FROM golang:1.9-alpine AS build
RUN  apk add --no-cache git
RUN  go get github.com/google/gops

FROM alpine:3.6
COPY --from=build /go/bin/gops /usr/bin/gops

ENTRYPOINT ["/usr/bin/gops"]
