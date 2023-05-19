FROM ubuntu:22.04

RUN apt-get update && apt-get install -y golang-go git

WORKDIR /

COPY . .

RUN go build -o main main.go

CMD ["./main"]