FROM python:3.11-slim

WORKDIR /app

# Cài đặt các gói cần thiết
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Sao chép requirements.txt 
COPY requirements.txt .

# Cài đặt các gói Python cần thiết
RUN pip install --no-cache-dir -r requirements.txt

# Đảm bảo curl_cffi được cài đặt
RUN pip install -U curl_cffi

# Sao chép toàn bộ mã nguồn vào container
COPY . .

# Thiết lập biến môi trường
ENV PYTHONUNBUFFERED=1

# Mở cổng mà ứng dụng sẽ chạy
EXPOSE 8080

# Khởi động ứng dụng
CMD ["python", "-m", "g4f.cli", "gui", "--port", "8080", "--host", "0.0.0.0"] 