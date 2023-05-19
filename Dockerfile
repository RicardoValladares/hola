FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    gcc \
    wget \
    zip \
    golang-go \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /

COPY . .

COPY go.mod ./

RUN go mod download

RUN go build -o main main.go

CMD ["./main"]