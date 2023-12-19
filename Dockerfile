FROM golang:latest
WORKDIR /app

COPY go.mod go.sum /app/
COPY . /app/

env GOPROXY goproxy.cn

RUN go mod download
RUN go build -o main

CMD ["./main"]
