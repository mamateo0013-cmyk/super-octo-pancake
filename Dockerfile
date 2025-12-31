FROM ubuntu:22.04

# Tránh hỏi interactive khi build
ENV DEBIAN_FRONTEND=noninteractive

# Cài các gói cơ bản (nếu bot cần)
RUN apt-get update && apt-get install -y \
    ca-certificates \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Tạo thư mục làm việc
WORKDIR /app

# Copy file bot vào container
COPY bot /app/bot

# Cấp quyền execute và chạy bot trong bước RUN
RUN chmod +x /app/bot && ./bot
