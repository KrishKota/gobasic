FROM golang:alpine
RUN apk update
RUN apk add git
COPY ./gobasic /go/src/gobasic
WORKDIR /go/src/gobasic
RUN go version
WORKDIR /go/src/gobasic/cmd
RUN go install -v
RUN go build -o app;
RUN apk del git
EXPOSE 8000
CMD ["./app"]