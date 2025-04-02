# NexChat

NexChat là ứng dụng chatbot AI với giao diện đẹp mắt, hỗ trợ nhiều tính năng như gửi ảnh, chụp ảnh, tải tệp đính kèm và nhiều model AI khác nhau.

## Tính năng

- Giao diện dark mode hiện đại
- Hỗ trợ tải lên và chụp ảnh 
- Hỗ trợ đính kèm tệp tin
- Tương thích với nhiều model AI khác nhau
- Tối ưu hóa giao diện cho mobile
- Dễ dàng triển khai với Docker

## Cài đặt và chạy với Docker

### Yêu cầu
- Docker
- Docker Compose

### Cách cài đặt

1. Clone repository:
```bash
git clone https://github.com/yourusername/nexchat.git
cd nexchat
```

2. Khởi động ứng dụng với Docker Compose:
```bash
docker compose up -d
```

3. Truy cập ứng dụng tại địa chỉ: http://localhost:8080

## Cài đặt thủ công

### Yêu cầu
- Python 3.8 hoặc cao hơn
- pip (trình quản lý gói Python)

### Các bước cài đặt

1. Clone repository:
```bash
git clone https://github.com/yourusername/nexchat.git
cd nexchat
```

2. Tạo và kích hoạt môi trường ảo (tùy chọn nhưng khuyến nghị):
```bash
python -m venv venv
# Windows
venv\Scripts\activate
# Linux/Mac
source venv/bin/activate
```

3. Cài đặt các gói phụ thuộc:
```bash
pip install -r requirements.txt
```

4. Khởi động ứng dụng:
```bash
python -m g4f.cli gui --port 8080
```

5. Truy cập ứng dụng tại địa chỉ: http://localhost:8080

## Tùy chỉnh

NexChat cho phép bạn tùy chỉnh một số thông số:

- Thay đổi cổng mặc định (8080) bằng cách chỉ định cổng khác trong lệnh khởi động
- Thay đổi giao diện với chế độ tối hoặc sáng 
- Lựa chọn các model AI khác nhau dựa trên nhu cầu

## Đóng góp

Đóng góp cho dự án luôn được chào đón. Vui lòng gửi Pull Request hoặc mở Issue để đề xuất tính năng mới hoặc báo cáo lỗi.

## Giấy phép

[MIT License](LICENSE)
