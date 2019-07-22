FROM golang:alpine
RUN apk update
RUN apk add git
COPY . /go/src/gobasic
WORKDIR /go/src/gobasic
RUN go version
WORKDIR /go/src/gobasic/cmd
RUN go install -v
RUN go build -o app;
RUN chmod 700 app
CMD ["/go/src/gobasic/cmd/app"]