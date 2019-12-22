FROM golang:1.13-alpine3.10
RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh && \
    apk add --update nodejs npm
RUN go get -u github.com/golangci/golangci-lint/cmd/golangci-lint
RUN go get github.com/vektra/mockery/.../
RUN npm install json-refs --global
COPY ./swagger_linux_amd64 /usr/local/bin/swagger
RUN apk add  curl unzip
RUN curl -O https://bin.equinox.io/c/gvM95th6ps1/sqlc-devel-linux-amd64.zip
RUN unzip sqlc-devel-linux-amd64.zip -d /usr/local/bin 
RUN chmod +x /usr/local/bin/swagger
