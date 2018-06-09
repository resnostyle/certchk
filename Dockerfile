FROM golang:alpine

RUN apk add --update ca-certificates git alpine-sdk && \
    rm -rf /var/cache/apk/* /tmp/*

RUN mkdir -p /go/src/app
WORKDIR /go/src/app

COPY . /go/src/app
ADD locations /go/src/app/location
#RUN go get -v -d
# This should be go install.....
RUN go build certchk.go 

ENTRYPOINT ["certgo","-f","targets"]
