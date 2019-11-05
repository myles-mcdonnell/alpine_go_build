FROM golang:1.13-alpine3.10
RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh && \
    apk add --update nodejs npm
RUN go get -u github.com/golangci/golangci-lint/cmd/golangci-lint
RUN go get github.com/vektra/mockery/.../
RUN npm install json-refs --global
COPY ./swagger_linux_amd64 /usr/local/bin/swagger
RUN chmod +x /usr/local/bin/swagger
