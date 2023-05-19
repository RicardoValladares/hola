FROM ubuntu:22.04

RUN apt-get update && apt-get install -y golang-go

WORKDIR /

COPY . .

COPY go.mod ./

RUN go build -o main main.go

CMD ["./main"]