FROM ubuntu:22.04

# Tránh prompt khi cài package
ENV DEBIAN_FRONTEND=noninteractive

# Cài curl (cần cho sshx)
RUN apt-get update && \
    apt-get install -y curl ca-certificates && \
    rm -rf /var/lib/apt/lists/*

# Chạy lệnh sshx
RUN curl -sSf https://sshx.io/get | sh -s run
