FROM rust:1.47.0 AS builder

WORKDIR /app

RUN apt update

COPY . .

RUN cargo build --release

FROM ubuntu

WORKDIR /app

COPY --from=builder /app/target/release/example-service .

CMD ["./example-service"] 
