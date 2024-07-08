FROM golang:alpine AS builder
RUN apk add --no-cache gcc libc-dev
WORKDIR /workspace
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -a

FROM alpine AS final
ARG ENV
WORKDIR /
COPY --from=builder /workspace/go-consumer .
CMD [ "./go-consumer" ]

LABEL description="Example microservice based on Go."
LABEL maintainer="alan.kelly.london@gmail.com"
LABEL source="https://github.com/aykay76/go-consumer"
LABEL labels="kubernetes"
LABEL org.opencontainers.image.documentation="https://github.com/"
