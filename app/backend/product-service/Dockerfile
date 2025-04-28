# -------- Stage 1: Build --------
    FROM golang:1.22 AS builder

    WORKDIR /app
    
    COPY go.mod .
    COPY main.go .
    
    RUN go mod tidy
    RUN go build -o main .
    
    # -------- Stage 2: Run (Distroless) --------
    FROM gcr.io/distroless/static:nonroot
    
    WORKDIR /
    
    COPY --from=builder /app/main .
    
    USER nonroot:nonroot
    
    EXPOSE 8082
    
    CMD ["./main"]
    