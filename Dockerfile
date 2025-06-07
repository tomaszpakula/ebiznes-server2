FROM golang:latest AS builder

WORKDIR /app

COPY go.* ./

RUN go mod download

COPY . .

RUN go build -o main main.go

EXPOSE 9000

CMD ["./main"]