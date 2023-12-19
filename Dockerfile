FROM golang:latest
WORKDIR /app

COPY . /app/

env GOPROXY goproxy.cn

RUN go mod download
RUN go build -o main

CMD ["./main"]
